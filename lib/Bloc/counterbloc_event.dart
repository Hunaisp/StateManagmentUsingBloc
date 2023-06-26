part of 'counterbloc_bloc.dart';

@immutable
abstract class CounterblocEvent {}
class IncrementEvent extends CounterblocEvent{}
class DecrementEvent extends CounterblocEvent{}