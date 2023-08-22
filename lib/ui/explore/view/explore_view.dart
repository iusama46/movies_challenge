import 'package:flutter/material.dart';
import 'package:movies_challenge/config/app_colors.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: const Column(
        children: [
          TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.search,
                color: AppColors.navBarItemColor,
              ),
              isDense: true,
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 1, color: AppColors.navBarItemColor),
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              hintStyle: TextStyle(color: AppColors.rowItemTextColor),
              hintText: "Enter the movie name",
            ),
          )
        ],
      ),
    );
  }
}
