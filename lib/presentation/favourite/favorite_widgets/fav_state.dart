part of 'fav_bloc.dart';


final class FavInitial{
  List<ProductParam> list;
  Status favStatus;
  final bool isIn;
  FavInitial({required this.list, required this.favStatus, required this.isIn});

  FavInitial copyWith({
    List<ProductParam> ?list,
    Status ? favStatus,
    bool? isIn

}){ return FavInitial(list: list ??this.list, favStatus: favStatus?? this.favStatus,isIn: isIn??this.isIn);

}
}
