part of 'fav_bloc.dart';

@immutable
sealed class FavEvent {}

class LoadFavEvent extends FavEvent{}
class AddToFavoriteNewEvent extends FavEvent{
  List<ProductParam> list;
  int id;
  AddToFavoriteNewEvent(this.list, this.id);

}


class AddProductToBasketEvent extends FavEvent{
  List<ProductParam> list2;
  int id;
  AddProductToBasketEvent( this.list2,  this.id);
}