import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_challenge/business/dashboard/dash_board_bloc.dart';
import 'package:movies_challenge/config/app_colors.dart';
import 'package:movies_challenge/ui/explore/view/explore_view.dart';
import 'package:movies_challenge/ui/movie_detail/view/movie_detail_view.dart';
import 'package:movies_challenge/ui/saved/view/saved_view.dart';

import '../../homepage/view/homepage_view.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.search_outlined),
    label: 'Explore',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.favorite_outline),
    label: 'Saved',
  ),
];

const List<Widget> bottomNavScreen = <Widget>[
  HomePage(),
  // MovieDetailPage(),
  ExplorePage(),
  SavedPage()
];

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  // const DashboardPage({super.key, required this.title});

  //final String title;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DashBoardBloc, DashBoardState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
              child: Center(child: bottomNavScreen.elementAt(state.tabIndex))),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.primaryColor,
            items: bottomNavItems,
            currentIndex: state.tabIndex,
            selectedItemColor: AppColors.navBarItemColor,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              BlocProvider.of<DashBoardBloc>(context)
                  .add(TabChange(tabIndex: index));
            },
          ),
        );
      },
    );
  }
}
