import 'package:bloc/bloc.dart';
part 'counter_events.dart';

class CounterBloc extends Bloc<CounterEvents, int> {
  CounterBloc(): super(0) {
    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecremented>((event, emit){
      emit(state - 1);
    });
  }
}