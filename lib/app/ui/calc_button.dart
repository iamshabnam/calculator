import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final Color color;
  final Function() onPressed;
  final String btnText;

  const CalcButton({
    Key? key,
    required this.color,
    required this.onPressed,
    required this.btnText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
      ),
      onPressed: onPressed,
      child: Text(btnText),
    );
  }
}
