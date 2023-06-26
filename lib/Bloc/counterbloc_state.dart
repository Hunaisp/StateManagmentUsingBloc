part of 'counterbloc_bloc.dart';

@immutable
abstract class CounterblocState {}

class CounterState extends CounterblocState {
  int counterValue;
  CounterState({required this.counterValue});
}

class CounterInitial extends CounterState {
  CounterInitial() : super(counterValue: 0);
}
