import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp2/widget/EditNoteBody1.dart';
import 'package:noteapp2/widget/badynoteapp.dart';

import '../cubits/Notes/notess_cubit.dart';
import '../widget/add_butomsheet.dart';

class notappviwes extends StatelessWidget {
  const notappviwes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context, builder: (context) {
            return const add_butomsheet();
          }
          );
        },
            child: const Icon(
                Icons.add
            )),

        body: const badynotapp()
    );
  }
}
