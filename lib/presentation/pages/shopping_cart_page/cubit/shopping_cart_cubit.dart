import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:third_task/domain/entities/entities.dart';
import 'package:third_task/domain/repository/i_shopping_cart_repository.dart';

part 'shopping_cart_state.dart';
part 'shopping_cart_cubit.freezed.dart';

class ShoppingCartCubit extends Cubit<ShoppingCartState> {
  final int shoppingCartId;
  final IShoppingCartRepository shoppingCartRepository;

  ShoppingCart? _shoppingCart;

  ShoppingCartCubit({
    required this.shoppingCartRepository,
    required this.shoppingCartId,
  }) : super(const ShoppingCartState.loadInProgress());

  Future<void> onPageOpened() async {
    try {
      _shoppingCart =
          await shoppingCartRepository.getShoppingCart(shoppingCartId);
      emit(
        ShoppingCartState.loadSuccess(
          shoppingCart: _shoppingCart!,
        ),
      );
    } catch (error, stackTrace) {
      log(
        'Error during shopping cart loading',
        error: error,
        stackTrace: stackTrace,
      );
      emit(
        ShoppingCartState.loadFailure(loadError: error),
      );
    }
  }

  Future<void> onShoppingCartDeleted(int id) async =>
      await state.mapOrNull<Future>(
        loadSuccess: (state) async {
          try {
            if (_shoppingCart != null) {
              await shoppingCartRepository.deleteShoppingCart(id);
              _shoppingCart = _shoppingCart!.copyWith(
                products: [],
              );
              emit(
                state.copyWith(
                  shoppingCart: _shoppingCart!,
                ),
              );
            }
          } catch (error, stackTrace) {
            log(
              'Error during shopping cart deleting',
              error: error,
              stackTrace: stackTrace,
            );
            emit(
              ShoppingCartState.loadFailure(loadError: error),
            );
          }
        },
      );

  Future<void> onProductToShoppingCartAdded(
    int id,
    Product product,
  ) async =>
      await state.mapOrNull<Future>(
        loadSuccess: (state) async {
          try {
            if (_shoppingCart != null) {
              final shoppingCartItem =
                  ShoppingCartItem(product: product, quantity: 1);
              await shoppingCartRepository.addProductToShoppingCart(
                id,
                shoppingCartItem,
              );
              _shoppingCart = _shoppingCart?.copyWith(
                products: [..._shoppingCart!.products, shoppingCartItem],
              );
              emit(
                state.copyWith(
                  shoppingCart: _shoppingCart!,
                ),
              );
            }
          } catch (error, stackTrace) {
            log(
              'Error during product to shopping cart adding',
              error: error,
              stackTrace: stackTrace,
            );
            emit(
              ShoppingCartState.loadFailure(loadError: error),
            );
          }
        },
      );

  Future<void> onProductQuantityChanged(
          ShoppingCartItem shoppingCartItem) async =>
      await state.mapOrNull<Future>(loadSuccess: (state) async {
        try {
          if (_shoppingCart != null) {
            final updatedShoppingCart = _shoppingCart!.copyWith();
            final updatingItemIndex = updatedShoppingCart.products.indexWhere(
              (item) => item.product.id == shoppingCartItem.product.id,
            );
            updatedShoppingCart.products[updatingItemIndex] = shoppingCartItem;
            await shoppingCartRepository
                .updateShoppingCart(updatedShoppingCart);
            _shoppingCart = updatedShoppingCart;
            emit(
              state.copyWith(
                shoppingCart: _shoppingCart!,
              ),
            );
          }
        } catch (error, stackTrace) {
          log(
            'Error during shopping cart updating',
            error: error,
            stackTrace: stackTrace,
          );
          emit(
            ShoppingCartState.loadFailure(loadError: error),
          );
        }
      });
}
