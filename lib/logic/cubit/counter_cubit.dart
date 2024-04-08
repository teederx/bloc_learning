import 'dart:convert';

import 'package:hydrated_bloc/hydrated_bloc.dart';
// import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends HydratedCubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0));
  void increment() => emit(
      CounterState(counterValue: state.counterValue + 1, wasIncremented: true));

  void decremnt() => emit(CounterState(
      counterValue: state.counterValue - 1, wasIncremented: false));

  @override
  CounterState fromJson(Map<String, dynamic> json) {
    // print('${json.entries}');
    return CounterState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    // print('${state.counterValue}  ${state.wasIncremented}');
    return state.toMap();
  }
}
