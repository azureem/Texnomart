part of 'basket_bloc.dart';

@immutable
sealed class BasketEvent {}
class GetProductsInBasketEvent extends BasketEvent{}

class DeleteProductInBasketEvent extends BasketEvent{
 final int id;
 DeleteProductInBasketEvent(this.id);

}

class AddToFaveEvent extends BasketEvent{
 List<ProductParam> finalList;
 int id;
 AddToFaveEvent(this.finalList, this.id);
}

class CalculationClickEvent extends BasketEvent{
 String operation;
 int id;

 CalculationClickEvent(this.operation, this.id);
}
