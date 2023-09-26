// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:college_average_calculator/screens/calculator/components/input_form.dart';

class CalculateAverage extends StatefulWidget {
  const CalculateAverage({
    Key? key,
  }) : super(key: key);

  @override
  State<CalculateAverage> createState() => _CalculateAverageState();
}

class _CalculateAverageState extends State<CalculateAverage> {

  List<InputForm> inputForms = [];

  double result = 0.0;

  void updateResult(double newResult) {
    setState(() {
      result = newResult;
    });
  }
  

  void addInputForm() {
    setState(() {
      inputForms.add(
        InputForm(
          labelNota: "Nota", 
          hintNota: "Informe sua nota", 
          labelWheight: "Peso", 
          hintWheight: "%",
          onResultChanged: updateResult,
        )
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Calcular média"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              for (var form in inputForms)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      form,
                    ],
                  ),
                ],
              ),
              FloatingActionButton(
                onPressed: () {
                  addInputForm();
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                width: double.infinity,
                height: 100,
                child: Card(
                  elevation: 6,
                  color: const Color(0xff007BBF),
                  child: Center(
                    child: Text(
                      "Resultado: $result %",
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
