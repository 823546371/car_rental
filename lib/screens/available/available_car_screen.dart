import 'package:car_rental/constants.dart';
import 'package:car_rental/screens/available/widget/car_list_item.dart';
import 'package:flutter/material.dart';

class AvailableCarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mPrimaryColor,
      appBar: buildAppBar(),
      body: ListView.builder(
        itemCount: carList.length,
        itemBuilder: (context, index) => CarListItem(index),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mPrimaryColor,
      elevation: 0,
      title: Text('Available Car'),
      actions: [
        IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}

