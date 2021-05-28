import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  DetailsWidget({this.icon, this.title,this.subTitle });
  IconData icon;
  String title;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon),
                  SizedBox(width: 10,),
                  Text(title),
                ],
              ),

              Text(subTitle),

            ],
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
