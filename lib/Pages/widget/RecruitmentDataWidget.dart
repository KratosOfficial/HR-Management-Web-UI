import 'package:flutter/material.dart';
import 'package:hrmanagement/common/AppColor.dart';

class RecruitmentDataWidget extends StatefulWidget {
  const RecruitmentDataWidget({Key? key}) : super(key: key);

  @override
  State<RecruitmentDataWidget> createState() => _RecruitmentDataWidgetState();
}

class _RecruitmentDataWidgetState extends State<RecruitmentDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recruitment Progress",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.black,
                    fontSize: 22),
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColor.yellow,
                    borderRadius: BorderRadius.circular(100)),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "View All",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: AppColor.black),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
                children: [
                  tableHeader("Full Name"),
                  tableHeader("Designation"),
                  tableHeader("Status"),
                  tableHeader(""),
                ],
              ),

              //table data
              tableRow(
                context,
                name: "Mary G Lolus",
                image: "assets/user1.jpg",
                designation: "Project Manger",
                status: "Practical Round",
                color: Colors.blue,
              ),
              tableRow(
                context,
                name: "Vince Jacob",
                image: "assets/user2.jpg",
                designation: "UI/UX Designer",
                status: "Practical Round",
                color: Colors.blue,
              ),
              tableRow(
                context,
                name: "Nell Brian",
                image: "assets/user3.jpg",
                designation: "React Developer",
                status: "Final Round",
                color: Colors.green,
              ),
              tableRow(
                context,
                name: "Vince Jacob",
                image: "assets/user4.jpg",
                designation: "UI/UX Designer",
                status: "HR Round",
                color: Colors.yellow,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Showing 4 out of 4 Results"),
                Text(
                  "View All",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  TableRow tableRow(context, {name, image, designation, status, color}) {
    return TableRow(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ))),
        children: [
          //full name

          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    image,
                    width: 30,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(name)
              ],
            ),
          ),

          //Designation
          Text(designation),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle, color: color),
                height: 10,
                width: 10,
              ),
              SizedBox(
                width: 10,
              ),
              Text(status)
            ],
          ),
          //menu icon
          Image.asset(
            "assets/more.png",
            color: Colors.grey,
            height: 30,
          )
        ]);
  }

  Widget tableHeader(text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.black),
      ),
    );
  }
}
