part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}
class InitEvent extends HomeEvent{}
class LoadAllDataEvent extends HomeEvent{}
class AddToFavoriteNewEvent extends HomeEvent{
 List<ProductParam> list;
 int id;
 AddToFavoriteNewEvent(this.list, this.id);

}

class AddToFavoriteHitEvent extends HomeEvent{
  List<ProductParam> list;
  int id;
  AddToFavoriteHitEvent(this.list, this.id);

}

class DeleteFavoriteEvent extends HomeEvent{
  int id;
  DeleteFavoriteEvent(this.id);
}

