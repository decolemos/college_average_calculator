// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonsGridView extends StatefulWidget {

  final IconData icon;
  final String titleCard;

  const ButtonsGridView({
    Key? key,
    required this.icon, required this.titleCard,
  }) : super(key: key);

  @override
  State<ButtonsGridView> createState() => _ButtonsGridViewState();
}

class _ButtonsGridViewState extends State<ButtonsGridView> {

  @override
  Widget build(BuildContext context) {
    return Container(
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
            widget.icon,
            size: 80,
            color: Colors.white,
          ),
          Text(
            widget.titleCard,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}
