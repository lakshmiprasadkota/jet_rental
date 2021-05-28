import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jet_rental/screens/widgets_screen/app_buttons.dart';
import 'package:jet_rental/screens/widgets_screen/app_widgets.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 300,
              color: Colors.white,
              child: Carousel(
                images: [
                  AssetImage("assets/images/jet.jpg"),
                  AssetImage("assets/images/speed_meter.jpg"),
                  AssetImage("assets/images/jet.jpg"),
                  AssetImage("assets/images/jet.jpg"),
                  AssetImage("assets/images/speed_meter.jpg"),
                ],
                dotSize: 5.0,
                dotSpacing: 20.0,
                dotColor: Colors.grey,
                indicatorBgPadding: 5.0,
                dotPosition: DotPosition.topLeft,
                borderRadius: false,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
                dotVerticalPadding: 20,
                dotHorizontalPadding: 20,
                dotBgColor: Colors.transparent,
                overlayShadowColors: Colors.white,
                overlayShadowSize: 0.7,
              ),
            ),
            Positioned(
                right: 10,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.cancel_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                )),
            Positioned(
              bottom: -400,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Private Helicopter Tour over Long Beach and Los Angeles",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        DetailsWidget(
                          title: "Price",
                          icon: Icons.attach_money,
                          subTitle: "From \$589.75",
                        ),
                        DetailsWidget(
                          title: "Duration",
                          icon: Icons.timelapse,
                          subTitle: "45m",
                        ),
                        DetailsWidget(
                          title: "Rating",
                          icon: Icons.star_border,
                          subTitle: "4.9",
                        ),
                        DetailsWidget(
                          title: "Passengers",
                          icon: Icons.group,
                          subTitle: "2 to 3",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.calendar_today),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("19 may")
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.group),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("2 adults")
                                ],
                              )
                            ],
                          ),
                        ),
                        ButtonWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
