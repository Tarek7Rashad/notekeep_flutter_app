import 'package:hive/hive.dart';
part 'Note_Model.g.dart';
@HiveType(typeId: 0)
class NoteModel extends HiveObject  {
  @HiveField(0)
  final String title;
    @HiveField(1)
  final String subTitle;
    @HiveField(2)
  final DateTime date;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
  });
}
