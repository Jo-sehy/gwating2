import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class next_Button extends StatelessWidget {
  final VoidCallback onPressed;

  const next_Button({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, right: 12, bottom: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          primary: const Color.fromARGB(255, 245, 197, 53),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Container(
          width: double.infinity,
          child: Center(
            child: Text(
              "다음",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
