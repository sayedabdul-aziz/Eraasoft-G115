class CounterState {}

class CounterInit extends CounterState {}

class CounterUpdateState extends CounterState {
  final int counter;
  CounterUpdateState(this.counter);
}
