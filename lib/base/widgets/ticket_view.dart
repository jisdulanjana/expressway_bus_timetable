import 'package:expressway_bus_timetable/base/res/styles/app_styles.dart';
import 'package:expressway_bus_timetable/base/widgets/app_layoutbulider_wiget.dart';
import 'package:expressway_bus_timetable/base/widgets/big_cycle.dart';
import 'package:expressway_bus_timetable/base/widgets/big_dot.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.tickeBlue,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  // Dhow departure and arrival with icon
                  Row(
                    children: [
                      Text(
                        "EMB",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      const BigDot(),
                      const Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutbuliderWiget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                              child: Icon(
                                Icons.directions_bus_filled_outlined,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "CMB",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // Show departure and arrival city
                  Row(
                    children: [
                      Text(
                        "Embilipitiya",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "2H 30M",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "Colombo",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  // Show departure and arrival time
                ],
              ),
            ),
            Container(
              height: 20,
              decoration: BoxDecoration(color: AppStyles.ticketOrange,),
              child: Row(
                children: [
                  BigCycle(isRight: false,),
                  Expanded(child: Container()),
                  BigCycle(isRight: true,),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  // Dhow departure and arrival with icon
                  Row(
                    children: [
                      Text(
                        "EMB",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      const BigDot(),
                      const Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutbuliderWiget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                              child: Icon(
                                Icons.directions_bus_filled_outlined,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "CMB",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // Show departure and arrival city
                  Row(
                    children: [
                      Text(
                        "Embilipitiya",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "2H 30M",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "Colombo",
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  // Show departure and arrival time
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
