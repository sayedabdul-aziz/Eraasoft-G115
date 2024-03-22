import 'package:counter_with_cubit/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInit());

  int counter = 0;
  // add
  add() {
    counter++;
    emit(CounterUpdateState(counter));
  }

  restart() {
    counter = 0;
    emit(CounterUpdateState(counter));
  }

  // remove
  remove() {
    counter--;
    emit(CounterUpdateState(counter));
  }
}
