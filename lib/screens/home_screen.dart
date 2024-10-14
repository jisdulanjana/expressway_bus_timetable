import 'package:expressway_bus_timetable/base/res/media.dart';
import 'package:expressway_bus_timetable/base/res/styles/app_styles.dart';
import 'package:expressway_bus_timetable/base/widgets/app_double_text.dart';
import 'package:expressway_bus_timetable/base/widgets/ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: AppStyles.headLineStyle3,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Book Tickets",
                            style: AppStyles.headLineStyle1,
                          ),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xfff4f6fd),
                            image: const DecorationImage(
                                image: AssetImage(AppMedia.logo))),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      // color: Colors.grey[200],
                      color: Color(0xfff4f6fd),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xffbfc205),
                        ),
                        Text("Search"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const AppDoubleText(
                    bigText: "Upcomming Buses",
                    smallText: "View All",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TicketView(),
                ],
              ),
            ),
          ],
        ));
  }
}
