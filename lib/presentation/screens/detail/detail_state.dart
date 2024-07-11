part of 'detail_bloc.dart';

@immutable
class DetailState {
  final Status detailItemStatus;
  final int id;
  final ProductParam detailItem;
  final bool isAdd;
  final bool isIn;
 // final HitProducts3 hitProduct;
  // final NewProducts3 newProduct;

  DetailState(
      {
        required this.isIn,
       required this.isAdd,
        required this.id,
        required this.detailItemStatus,
        required   this.detailItem
      // required this.hitProduct,
      // required this.newProduct
      });

  DetailState copyWith(
      {
        bool? isIn,
        bool? isAdd,
        int? id,
        Status? detailItemStatus,
        ProductParam? detailItem
      // HitProducts3? hitProduct,
      // NewProducts3? newProduct
      }) {
    return DetailState(
      isIn: isIn??this.isIn,
      isAdd: isAdd?? this.isAdd,
         id: id?? this.id,
        detailItemStatus: detailItemStatus ?? this.detailItemStatus,
        detailItem: detailItem?? this.detailItem
        // hitProduct: hitProduct ?? this.hitProduct,
        // newProduct: newProduct ?? this.newProduct
    );
  }
}
