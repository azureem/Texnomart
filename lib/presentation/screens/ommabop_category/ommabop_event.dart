part of 'ommabop_bloc.dart';

@immutable
sealed class OmmabopEvent {}

class GetOmmabopEvent extends OmmabopEvent {
  String slug;

  GetOmmabopEvent({required this.slug});
}


class GetItemDetailEvent extends OmmabopEvent{
  int id;

  GetItemDetailEvent({required this.id});

}

class AddProductToBasketEvent extends OmmabopEvent{
  List<ProductParam> list2;
  int id;
  AddProductToBasketEvent( this.list2,  this.id);
}


class AddToFavoriteHitEvent extends OmmabopEvent{
  List<ProductParam> list;
  int id;
  AddToFavoriteHitEvent(this.list, this.id);

}
