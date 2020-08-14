import 'package:car_rental/constants.dart';
import 'package:car_rental/model/car.dart';
import 'package:car_rental/widget/attribute.dart';
import 'package:flutter/material.dart';

class CarInfomation extends StatelessWidget {
  const CarInfomation({
    Key key,
    @required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 24, right: 24,top: 50),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: mCardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\$${car.price}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'price/hr',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Attribute(
                value: car.brand,
                name: 'Brand',
              ),
              Attribute(
                value: car.model,
                name: 'Model No',
              ),
              Attribute(
                value: car.co2,
                name: 'CO2',
              ),
              Attribute(
                value: car.fuelCons,
                name: 'Fule Cons.',
              ),
            ],
          )
        ],
      ),
    );
  }
}

