import 'package:hive/hive.dart';
part 'basket_model.g.dart';
@HiveType(typeId: 1)
class BasketModel extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String title;

  @HiveField(2)
  int price;

  @HiveField(3)
  String img;

  @HiveField(4)
  bool isCheck;

  @HiveField(5)
  bool isFav;

  @HiveField(6)
  int count;

  BasketModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.img,
      required this.isCheck,
      required this.isFav,
      required this.count});
}
