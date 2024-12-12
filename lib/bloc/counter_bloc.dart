import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<AddEvent>((event, emit) {
      final newValue = state + 1;
      emit(newValue);
    });
    on<RemoveEvent>((event, emit) {
      final newValue = state - 1;
      emit(newValue);
    });
  }
}
