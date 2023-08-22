import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  var spacing = 4;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 8.2;
    var width = MediaQuery.of(context).size.width / 4.5;
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              Text(
                'Movie Details',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              Visibility(
                  visible: false,
                  child: Icon(Icons.arrow_forward_ios, color: Colors.white)),
            ],
          ),
          const SizedBox(
            height: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.2,
                child: Container(
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      color: AppColors.rowItemColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(32))),
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: Container(
                      margin: const EdgeInsets.only(
                        right: 20,
                        top: 16,
                      ),
                      alignment: Alignment.topRight,
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 42,
                      )),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: height,
                    child: Container(
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          //color: AppColors.rowItemColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(24))),
                      width: width,
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_settings_outlined,
                              color: Colors.white,
                              size: 24,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Genre',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Action',
                              style: TextStyle(
                                  color: AppColors.rowItemTextColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: height,
                    child: Container(
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          //color: AppColors.rowItemColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(24))),
                      width: width,
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.alarm,
                              color: Colors.white,
                              size: 24,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Durations',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '131 mins',
                              style: TextStyle(
                                  color: AppColors.rowItemTextColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: height,
                    child: Container(
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          //color: AppColors.rowItemColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(24))),
                      width: width,
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                              size: 24,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Rating',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '8,341',
                              style: TextStyle(
                                  color: AppColors.rowItemTextColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Top Gun: Maverick',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.navBarItemColor,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.play_circle_fill_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Watch Trailer',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.navBarItemColor,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.note_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Add to My Watching List',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 10,
          ),

          Text('Plot Summary', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.textColor),)
        ],
      ),
    );
  }
}
