import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp2/cubits/Notes/notess_cubit.dart';
import 'package:noteapp2/simpel/blocOpserv.dart';
import 'package:noteapp2/viwes/noteapp.dart';
import 'package:noteapp2/widget/cons_color.dart';
import 'cubits/Add_Notes/add_nodes_cubit.dart';
import 'model/model.dart';

void main() async {
  Bloc.observer = blocOpserv();
  await Hive.initFlutter();
  Hive.registerAdapter(modelAdapter());
  await Hive.openBox<model>(knotebox);
  runApp(const notapp());
}

class notapp extends StatelessWidget {
  const notapp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotessCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Poppins'
        ),
        home: notappviwes(),

      ),
    );
  }
}
