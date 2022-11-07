import 'package:flutter/material.dart';
import 'package:hrmanagement/common/AppColor.dart';

class NotificationCardWidegt extends StatefulWidget {
  const NotificationCardWidegt({Key? key}) : super(key: key);

  @override
  State<NotificationCardWidegt> createState() => _NotificationCardWidegtState();
}

class _NotificationCardWidegtState extends State<NotificationCardWidegt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.yellow, borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(TextSpan(
                  style: TextStyle(fontSize: 16, color: AppColor.black),
                  children: [
                    TextSpan(text: "Good Morning "),
                    TextSpan(
                        text: "Kratos Official!",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ])),
              SizedBox(
                height: 10,
              ),
              Text(
                "Today You Have 9 New Applications. \n Also you need to hire 2 new Ux Designers. 1 \n React Native Developer",
                style:
                    TextStyle(fontSize: 14, color: AppColor.black, height: 1.5),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Read More",
                style: TextStyle(
                    fontSize: 14,
                    color: AppColor.black,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Spacer(),
          Image.asset("assets/notification_image.png", height: 160,)
        ],
      ),
    );
  }
}
