import 'package:flutter/material.dart';
import 'package:hrmanagement/common/AppColor.dart';

class ProfileCardWidget extends StatefulWidget {
  const ProfileCardWidget({Key? key}) : super(key: key);

  @override
  State<ProfileCardWidget> createState() => _ProfileCardWidgetState();
}

class _ProfileCardWidgetState extends State<ProfileCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/user1.jpg",
                  height: 60,
                  width: 60,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    "Kathy Walker",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "HR Manager",
                  ),
                ],
              )
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          ProfileListTile("Joined Date", "10-Aug- 2022"),
          ProfileListTile("Projects", "32 Active"),
          ProfileListTile("Accomplishment", "125"),
        ],
      ),
    );
  }

  Widget ProfileListTile(text, value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Text(
            value,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: AppColor.black),
          ),
        ],
      ),
    );
  }
}
