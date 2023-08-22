part of 'dash_board_bloc.dart';

@immutable
abstract class DashBoardEvent {}

class TabChange extends DashBoardEvent {
  final int tabIndex;

  TabChange({required this.tabIndex});
}
