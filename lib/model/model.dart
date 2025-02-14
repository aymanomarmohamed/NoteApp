import 'package:hive/hive.dart';
part 'model.g.dart';
@HiveType(typeId: 0)
class model extends HiveObject{
@HiveField(0)
   String title;
@HiveField(1)
   String subtitle;
@HiveField(2)
  final String data;
@HiveField(3)
   int ?color;



  model({ required this.title,required this.subtitle,
    required this.data, this.color});

}