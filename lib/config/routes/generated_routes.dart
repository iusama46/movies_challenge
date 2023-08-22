import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_challenge/business/dashboard/dash_board_bloc.dart';
import 'package:movies_challenge/ui/dashboard/view/dashboard_view.dart';

import 'package:movies_challenge/ui/homepage/view/homepage_view.dart';

class RouteGenerator {
  final DashBoardBloc dashboardBloc = DashBoardBloc();

  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<DashBoardBloc>.value(
            value: dashboardBloc,
            child: const DashboardPage(),
          ),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
