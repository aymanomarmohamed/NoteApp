import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/Add_Notes/add_nodes_cubit.dart';
import '../cubits/Notes/notess_cubit.dart';
import 'addnoteform.dart';

class add_butomsheet extends StatelessWidget {
  const add_butomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>AddNodesCubit (),
      child: Padding(
        padding:  EdgeInsets.only(left: 16 , right: 16 ,bottom: MediaQuery.of(context).viewInsets.bottom+20),
        child: BlocConsumer<AddNodesCubit, AddNodesState>(
          listener: (context, state) {
            if (state is AddNodesFailed) {
              print("filed");
            }
            if (state is AddNodesSuccess) {
              BlocProvider.of<NotessCubit>(context).FeetchAllNotes();
              Navigator.pop(context);
            }
            // TODO: implement listener
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNodesLoading ? true : false,
                child:SingleChildScrollView(child: noteform()));
          },
        ),
      ),
    );
  }
}

