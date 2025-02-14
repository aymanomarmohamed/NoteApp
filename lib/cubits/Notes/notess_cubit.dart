import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../model/model.dart';
import '../../widget/cons_color.dart';


part 'notess_state.dart';

class NotessCubit extends Cubit<NotessState> {
  NotessCubit() : super(NotessInitial());
  List<model>?NotesList;
  FeetchAllNotes()
  {

      var notebox= Hive.box<model>(knotebox);
      NotesList= notebox.values .toList();
      emit(NotessSucces());


  }
  }

