part of 'basket_bloc.dart';

class BasketState {

  final Status basketStatus;
  final List<ProductParam> basketList;

  BasketState({required this.basketStatus, required this.basketList});

  BasketState copyWith({
    Status? basketStatus,
    List<ProductParam>? basketList
  }) {
    return BasketState(basketStatus: basketStatus ?? this.basketStatus,
        basketList: basketList ?? this.basketList);
  }
}

