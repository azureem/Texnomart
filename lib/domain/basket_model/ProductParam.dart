class ProductParam {
  final int id;
  final String title;
  final int price;
  final String img;
  final bool isCheck;
  final bool isFav;
  final int count;
  final List<String> smallImages;

  ProductParam(
      {required this.id,
      required this.title,
      required this.price,
      required this.img,
      required this.isCheck,
      required this.isFav,
      required this.count,
        required this.smallImages
      });
}
