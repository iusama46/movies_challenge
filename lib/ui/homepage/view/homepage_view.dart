import 'package:flutter/material.dart';
import 'package:movies_challenge/config/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome Reem 🖐🏻',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 16,
                      )),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Bring popcorn, it\'s movie time.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Icon(
                Icons.person,
                color: Colors.white,
                size: 48,
              ),
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.navBarItemColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.navBarItemColor,
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 4,),
          SizedBox(
            height: 130,
            child: ListView.builder(
                itemExtent: 90,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.only(right: 5),
                  child: Column(children: [
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(

                        ),
                        color: AppColors.rowItemColor,
                        borderRadius: const BorderRadius.all(Radius.circular(16))
                    ),),
                    const SizedBox(height: 4,),
                    const Text('data', style: TextStyle(color: AppColors.rowItemTextColor),)
                  ],),
                    ),
                itemCount: 7),
          ),


          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trending Movie',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),

            ],
          ),
          const SizedBox(height: 12,),
          SizedBox(
            height: 250,
            child: ListView.builder(
                itemExtent: 150,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(right: 8),
                  child: Column(children: [
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                          border: Border.all(
                          ),
                          color: AppColors.rowItemColor,
                          borderRadius: const BorderRadius.all(Radius.circular(16))
                      ),),
                    const SizedBox(height: 4,),
                    const Text('datatat', style: TextStyle(color: Colors.white, fontSize: 16),),
                    const Text('data', style: TextStyle(color: AppColors.rowItemTextColor, fontSize: 14),),
                  ],),
                ),
                itemCount: 7),
          ),
        ],
      ),
    );
  }
}
