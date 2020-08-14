import 'package:car_rental/model/car.dart';
import 'package:car_rental/screens/detail/widget/car_detail_infomation.dart';
import 'package:car_rental/screens/detail/widget/my_appbar.dart';
import 'package:flutter/material.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;

  CarDetailScreen(this.car);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/map.png',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            MyAppbar(),
            Positioned(
              left: 24,
              right: 24,
              bottom: 24,
              child: Stack(
                children: [
                  CarDetailInfomation(car: car),
                  Positioned(
                    right: 16,
                    child: Image.asset(
                      car.image,
                      height: 100,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

