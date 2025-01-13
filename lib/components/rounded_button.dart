import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {

  final Color color;
  final String title;
  final VoidCallback onpressed;

  const RoundedButton({
    super.key,
    required this.color,
    required this.title,
    required this.onpressed
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onpressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style:  const TextStyle(color: kWhiteColor),
          ),
        ),
      ),
    );
  }
}
