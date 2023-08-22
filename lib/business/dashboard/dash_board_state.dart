part of 'dash_board_bloc.dart';

@immutable
abstract class DashBoardState {
  final int tabIndex;

  const DashBoardState({required this.tabIndex});
}

class DashBoardInitial extends DashBoardState {
  const DashBoardInitial({required super.tabIndex});
}
