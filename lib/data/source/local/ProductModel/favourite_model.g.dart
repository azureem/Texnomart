// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavouriteModelAdapter extends TypeAdapter<FavouriteModel> {
  @override
  final int typeId = 0;

  @override
  FavouriteModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavouriteModel(
      id: fields[0] as int,
      title: fields[1] as String,
      price: fields[2] as int,
      img: fields[3] as String,
      isCheck: fields[4] as bool,
      isFav: fields[5] as bool,
      count: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, FavouriteModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.img)
      ..writeByte(4)
      ..write(obj.isCheck)
      ..writeByte(5)
      ..write(obj.isFav)
      ..writeByte(6)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavouriteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
