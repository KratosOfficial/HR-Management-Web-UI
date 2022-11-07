import 'package:flutter/material.dart';
import 'package:hrmanagement/Pages/dashboard/dashboard.dart';
import 'package:hrmanagement/Pages/widget/SideBar.dart';
import 'package:hrmanagement/common/AppColor.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgsidemenu,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //side navigation menu
            Expanded(
              child: SideBar(),
            ),
            //main body part
            Expanded(
              flex: 4,
              child: dashboard(),
            ),
          ],
        ),
      ),
    );
  }
}
