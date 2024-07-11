part of 'ommabop_bloc.dart';


final class OmmabopInitialState {
  final Status slugStatus;
  final List<ProductParam> ommabopCategoryLs;
  final ProductParam typeItem;
  final bool isAdd;
  final bool isIn;

  OmmabopInitialState(
      {required this.slugStatus,
      required this.ommabopCategoryLs,
      required this.typeItem,
      required this.isAdd,
        required this.isIn
      });

  OmmabopInitialState copyWith(
      {Status? slugStatus,
      List<ProductParam>? ommabopCategoryLs,
      ProductParam? typeItem,
      bool? isAdd,
      bool ? isIn}) {
    return OmmabopInitialState(
        slugStatus: slugStatus ?? this.slugStatus,
        ommabopCategoryLs: ommabopCategoryLs ?? this.ommabopCategoryLs,
        typeItem: typeItem ?? this.typeItem,
        isAdd: isAdd ?? this.isAdd,
        isIn: isIn?? this.isIn);
  }
}
