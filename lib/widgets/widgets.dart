// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  IconData? icon;
  String? nameButton;
  ButtonWidget({this.icon, this.nameButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue.withOpacity(.2),
              elevation: 0,
              fixedSize: Size(115, 35),
              padding: EdgeInsets.only(top: 8, bottom: 5, left: 10, right: 20),
              // shadowColor: Color(0xffFF4500),
              // elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 20,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  nameButton!,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class SwiftWidget extends StatelessWidget {
  SwiftWidget({this.copyValue, this.name});

  String? name;
  String? copyValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 2),
          child: Row(
            children: [
              Text(
                name!,
                style: TextStyle(
                    // height: 1.4,
                    fontSize: 12,
                    fontFamily: 'jannah',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 20, bottom: 2),
          child: Row(
            children: [
              Text(
                copyValue!,
                style: TextStyle(
                    // height: 1.4,
                    fontSize: 12,
                    fontFamily: 'jannah',
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              Spacer(),
              SizedBox(
                height: 10,
              ),
              Icon(
                Icons.copy,
                size: 20,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  TextWidget({this.icon, this.text});
  Widget? icon;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Icon(
          //   icon,
          //   size: 20,
          //   color: Colors.black,
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Tab(
              icon: icon!,
              height: 20,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text(
              text!,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'jannah',
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("USA"), value: "USA"),
    DropdownMenuItem(child: Text("Canada"), value: "Canada"),
    DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
    DropdownMenuItem(child: Text("England"), value: "England"),
  ];
  return menuItems;
}
