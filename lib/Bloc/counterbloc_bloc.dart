import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counterbloc_event.dart';
part 'counterbloc_state.dart';

class CounterblocBloc extends Bloc<CounterblocEvent, CounterState> {
  CounterblocBloc() : super(CounterInitial()) {
    on<CounterblocEvent>((event, emit) {
      if (event is IncrementEvent) {
        emit(CounterState(counterValue: state.counterValue + 1));
      }
      if(event is DecrementEvent){
        emit(CounterState(counterValue: state.counterValue - 1));
      }
    });
  }
}

