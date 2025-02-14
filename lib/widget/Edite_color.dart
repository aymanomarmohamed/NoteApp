import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp2/model/model.dart';

import '../cubits/Add_Notes/add_nodes_cubit.dart';
import 'colors.dart';
import 'cons_color.dart';

class Editcolorlist extends StatefulWidget {
  Editcolorlist({super.key, required this.noteEdit});

 model noteEdit;
  @override
  State<Editcolorlist> createState() => _EditcolorlistState();
}

class _EditcolorlistState extends State<Editcolorlist> {
  late int countindex;
@override
  void initState() {
  countindex=kColorList.indexOf(Color(widget.noteEdit.color!));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 37*2,
      child: ListView.builder(itemCount: kColorList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {

          return  GestureDetector(
              onTap: () {
                countindex = index;
                widget.noteEdit.color=kColorList[index].value;
                setState(() {

                });
              },
              child: colorsietim(IsActive: countindex == index,color: kColorList[index],)
          );


        },),
    );
  }
}