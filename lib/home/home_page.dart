import 'package:college_average_calculator/home/components/buttons_grid_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String, dynamic>> listButtonOptions = [
    {"title": "Calcule suas notas", "icon": Icons.calculate_outlined},
    {"title": "Salve suas disciplina", "icon": Icons.description_outlined},
    {"title": "Crie uma anotação", "icon": Icons.paste},
    {"title": "Configurações", "icon": Icons.settings},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Calculadora de media"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: listButtonOptions.length, 
        itemBuilder: (context, index) {
          return ButtonsGridView(
            icon: listButtonOptions[index]["icon"],
            titleCard: listButtonOptions[index]["title"],
          );
        },
      )
    );
  }
}