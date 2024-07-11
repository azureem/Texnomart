part of 'detail_bloc.dart';

@immutable
sealed class DetailEvent {}


class GetItemDetailEvent extends DetailEvent{
  int id;

  GetItemDetailEvent({required this.id});

}

class AddProductToBasketEvent extends DetailEvent{
  final ProductParam data;
  AddProductToBasketEvent({ required this.data});
}

class AddToFavEvent extends DetailEvent{
  final ProductParam data;
  AddToFavEvent({required this.data});
}
