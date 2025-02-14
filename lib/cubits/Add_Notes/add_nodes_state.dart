part of 'add_nodes_cubit.dart';

@immutable
sealed class AddNodesState {}

final class AddNodesInitial extends AddNodesState {}
final class AddNodesLoading extends AddNodesState {}
final class AddNodesSuccess extends AddNodesState {}
final class AddNodesFailed extends AddNodesState {

  final String ErrorMassage ;

  AddNodesFailed(this.ErrorMassage);

}

