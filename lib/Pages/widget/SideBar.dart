import 'package:flutter/material.dart';
import 'package:hrmanagement/common/AppColor.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.bgsidemenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "KRATOS HR",
                style: TextStyle(
                    color: AppColor.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            DrawerListTile(
              icon: "assets/menu_home.png",
              title: "Dashboard",
              press: () {},
            ),
            DrawerListTile(
              icon: "assets/menu_recruitment.png",
              title: "Recruitment",
              press: () {},
            ),
            DrawerListTile(
              icon: "assets/menu_onboarding.png",
              title: "Onboarding",
              press: () {},
            ),
            DrawerListTile(
              icon: "assets/menu_report.png",
              title: "Reports",
              press: () {},
            ),
            DrawerListTile(
              icon: "assets/menu_calendar.png",
              title: "Calendar",
              press: () {},
            ),
            DrawerListTile(
              icon: "assets/menu_settings.png",
              title: "Settings",
              press: () {},
            ),
            Spacer(),
            Image.asset("assets/sidebar_image.png"),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title, icon;
  final VoidCallback press;

  const DrawerListTile(
      {Key? key, required this.title, required this.icon, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Image.asset(
        icon,
        height: 16,
        color: AppColor.white,
      ),
      title: Text(
        title,
        style: TextStyle(color: AppColor.white),
      ),
    );
  }
}
