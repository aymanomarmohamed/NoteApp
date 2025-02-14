import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:noteapp2/widget/cons_color.dart';

import '../../model/model.dart';

part 'add_nodes_state.dart';
class AddNodesCubit extends Cubit<AddNodesState> {
  AddNodesCubit() : super(AddNodesInitial());
  Color colornote=Color(0xff776D5A);
  addNote(model Note) async
  {
    Note.color=colornote.value;
    emit(AddNodesLoading());
try {
  var notebox= Hive.box<model>(knotebox);
   await notebox.add(Note);
  emit(AddNodesSuccess());

} on Exception catch (e) {
  emit(AddNodesFailed("ErrorMassage"));
  // TODO
}
  }

}
