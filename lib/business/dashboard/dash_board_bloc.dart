import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dash_board_event.dart';

part 'dash_board_state.dart';

class DashBoardBloc extends Bloc<DashBoardEvent, DashBoardState> {
  DashBoardBloc() : super(const DashBoardInitial(tabIndex: 0)) {
    on<DashBoardEvent>((event, emit) {
      if (event is TabChange) {
        emit(DashBoardInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
