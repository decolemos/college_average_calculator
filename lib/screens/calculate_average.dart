// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CalculateAverage extends StatelessWidget {

  final String labelGrades;
  final String hintGrades;
  final String labelWeight;
  final String hintWeight;

  const CalculateAverage({
    Key? key,
    required this.labelGrades,
    required this.hintGrades,
    required this.labelWeight,
    required this.hintWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calcular média"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                      labelText: labelGrades,
                      hintText: hintGrades
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                      labelText: labelWeight,
                      hintText: hintWeight
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            const Card(
              child: Row(
                children: [
                  Text("Peso %: "),
                  Text("18%")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
