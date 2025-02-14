import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:noteapp2/model/model.dart';
import '../cubits/Add_Notes/add_nodes_cubit.dart';
import 'Text_filed.dart';
import 'boutomtext_filed.dart';
import 'colors.dart';

class noteform extends StatefulWidget {
  const noteform({
    super.key,
  });

  @override
  State<noteform> createState() => _editnoteformState();
}

class _editnoteformState extends State<noteform> {
  final GlobalKey<FormState>kformkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String ? Title;
  String ? subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: kformkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          text_filed(Hint: "Titel"
            , onsaved: (value) {
              Title = value;
            },
          ),
          SizedBox(
            height: 8,
          ),
          text_filed(Hint: "Contect", Maxline: 5, onsaved: (value) {
            subTitle = value;
          },

          ),
          SizedBox(
            height: 20,
          ),
          colorlist(),
          SizedBox(
            height: 20,
          ),
          BlocBuilder<AddNodesCubit, AddNodesState>(
            builder: (context, state) {
              return buttom_text_filed(
                islodind: state is AddNodesLoading ? true:false
                ,ontap: () {
                if (kformkey.currentState!.validate()) {
                  kformkey.currentState!.save();
                  var formatdate=DateFormat("dd/MM/yyyy").format(DateTime.now());

                  var noteaddform = model(title: Title!,
                      subtitle: subTitle!,
                      data: formatdate,
                  );
                  BlocProvider.of<AddNodesCubit>(context).addNote(noteaddform);
                }

                else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },);
            },
          ),


        ],
      ),
    );
  }
}
