import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jet_rental/screens/widgets_screen/app_buttons.dart';
import 'package:jet_rental/screens/widgets_screen/app_widgets.dart';
import 'details_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<IconData> listViewIcons = [
    Icons.speed,
    Icons.flight,
    Icons.camera_alt_outlined
  ];
  List<String> listViewtitle = [
    "Helicopter Tour",
    "Helicopter Charters",
    "Aerial Photography"
  ];
  String select = "Helicopter Tour";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.send,
                          color: Colors.grey,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "LOS ANGELES, USA",
                          style: TextStyle(
                            fontSize: 12,
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Icon(
                      Icons.person_pin,
                      size: 50,
                    )
                  ],
                ),
                Text(
                  "Choose Your \nIdeal Air Trip",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 150,
                  child: ListView.separated(
                    itemCount: listViewIcons.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            select = listViewtitle[index];
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          height: 80,
                          width: 130,
                          decoration: BoxDecoration(
                              color: select == listViewtitle[index]
                                  ? Colors.black
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                listViewIcons[index],
                                color: select == listViewtitle[index]
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              Text(
                                listViewtitle[index],
                                style: TextStyle(
                                  color: select == listViewtitle[index]
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                textAlign: TextAlign.justify,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 20,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/jet.jpg")),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Hollywood & The Beach",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
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
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),

                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen()));
                          },
                          child: ButtonWidget())
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
