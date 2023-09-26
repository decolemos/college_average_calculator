// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {

  final String labelNota;
  final String hintNota;
  final String labelWheight;
  final String hintWheight;
  final void Function(double)? onResultChanged;

  const InputForm({
    Key? key,
    required this.labelNota,
    required this.hintNota,
    required this.labelWheight,
    required this.hintWheight,
    this.onResultChanged,
  }) : super(key: key);

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {

  List<TextEditingController> notaControllers = [TextEditingController()];
  List<TextEditingController> weigthControllers = [TextEditingController()];
  List<double> results = [0.0];
  List<double> allNotas = [0.0];

  void calculateResult(int index) {
    setState(() {
      double nota = double.tryParse(notaControllers[index].text) ?? 0.0;
      double weigth = double.tryParse(weigthControllers[index].text) ?? 0.0;

      if(weigth != 0) {
        results[index] = (nota * weigth) / 10;
      } else {
        results[index] = 0.0;
      }

      widget.onResultChanged!(results[index]);
    });
  }

  void addInputForm(double nota) {
    notaControllers.add(TextEditingController());
    weigthControllers.add(TextEditingController());
    allNotas.add(nota);
  }

  void deleteInputForm (int index) {
    setState(() {
      notaControllers.removeAt(index);
      weigthControllers.removeAt(index);
      allNotas.remove(index);

      widget.onResultChanged!(results[index]);
    });
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> inputForms = [];

    for (int index = 0; index < notaControllers.length; index++){
      for (int i = 0; i < notaControllers.length; i++) {
      inputForms.add(
        Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width - 171,
                  child: TextFormField(
                    controller: notaControllers[i],
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      labelText: widget.labelNota,
                      hintText: widget.hintNota,
                    ),
                    onChanged: (value) {
                      calculateResult(i);
                    },
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 300,
                  child: TextFormField(
                    controller: weigthControllers[i],
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      labelText: widget.labelWheight,
                      hintText: widget.hintWheight,
                    ),
                    onChanged: (value) {
                      calculateResult(i);
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {
                    deleteInputForm(index);
                  }, 
                  icon: const Icon(Icons.delete)
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      );
    }
  }

    return Column(
      children: [
        ...inputForms,
      ],
    );
  }
}