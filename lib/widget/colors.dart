import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp2/cubits/Add_Notes/add_nodes_cubit.dart';

import 'cons_color.dart';

class colorsietim extends StatelessWidget {
  const colorsietim({super.key, required this.IsActive, required this.color});
final bool IsActive;
final Color color;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child:IsActive ?  CircleAvatar(
        radius:37 ,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          backgroundColor: color,
          radius: 33,
        ),
      ): CircleAvatar(
        backgroundColor: color,
        radius: 37,
      ),
    );
  }
}
class colorlist extends StatefulWidget {
  const colorlist({super.key});

  @override
  State<colorlist> createState() => _colorlistState();
}

class _colorlistState extends State<colorlist> {
  int countindex=0;


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
            BlocProvider.of<AddNodesCubit>(context).colornote=kColorList[index];
            setState(() {
            });
          },
            child: colorsietim(IsActive: countindex == index,color: kColorList[index],)
        );


      },),
    );
  }
}

