import 'package:flutter_bloc/flutter_bloc.dart';

class AddRemoveCubit extends Cubit<int> {
  AddRemoveCubit() : super(0);
  void add() {
    emit(state + 1);
  }

  void remove() {
    if (state == 0) {
      return;
    }

    emit(state - 1);
  }
}
