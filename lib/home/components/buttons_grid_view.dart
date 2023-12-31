// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:college_average_calculator/screens/calculator/calculate_average.dart';

class ButtonsGridView extends StatelessWidget {

  final IconData icon;
  final String titleCard;

  const ButtonsGridView({
    Key? key,
    required this.icon,
    required this.titleCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) {
              return const CalculateAverage(

              );
            },
          )
        );
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: Colors.black
          ),
          color: const Color(0xff007BBF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 80,
              color: Colors.white,
            ),
            Text(
              titleCard,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}
