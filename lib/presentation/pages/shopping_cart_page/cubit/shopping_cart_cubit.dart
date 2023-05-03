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
  ShoppingCartCubit({
    required this.shoppingCartRepository,
    required this.shoppingCartId,
  }) : super(const ShoppingCartState.loadInProgress());
  
  Future<void> onPageOpened() async {
    try {
      final shoppingCart =
          await shoppingCartRepository.getShoppingCart(shoppingCartId);
      emit(
        ShoppingCartState.loadSuccess(
          shoppingCart: shoppingCart,
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
}

// shoppingCart.copyWith(
//         products: shoppingCart.products
//             .map(
//               (item) => item.copyWith(quantity: item.quantity + 1),
//             )
//             .toList());