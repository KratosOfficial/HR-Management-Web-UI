import 'package:flutter/material.dart';
import 'package:hrmanagement/Pages/widget/CalenderWidget.dart';
import 'package:hrmanagement/Pages/widget/HeaderWidget.dart';
import 'package:hrmanagement/Pages/widget/NotificationCardWidegt.dart';
import 'package:hrmanagement/Pages/widget/ProfileCardWidget.dart';
import 'package:hrmanagement/Pages/widget/RecruitmentDataWidget.dart';
import 'package:hrmanagement/common/AppColor.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.bcolor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          //Header part
          HeaderWidget(),
          Expanded(
              child: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        NotificationCardWidegt(),
                        SizedBox(
                          height: 20,
                        ),
                        RecruitmentDataWidget(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        CalenderWidget(),
                        SizedBox(height: 10,),
                        ProfileCardWidget(),
                      ],
                    ),
                  ),
                ),
            ],
          ),
              ))
          //
        ],
      ),
    );
  }
}
