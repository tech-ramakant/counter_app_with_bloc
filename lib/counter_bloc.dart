
// todo - Step 1: Create Some Events
//  you can also go with creating separate class approach

import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class CounterIncremented extends CounterEvent {}

// todo - Step 2: Set Up the Bloc Class
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    });
  }
}
