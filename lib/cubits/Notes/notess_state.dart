part of 'notess_cubit.dart';

@immutable
sealed class NotessState {}

final class NotessInitial extends NotessState {}
final class NotessSucces extends NotessState {}
