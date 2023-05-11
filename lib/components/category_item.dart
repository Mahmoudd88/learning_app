import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({Key? key, this.color, this.text, this.destination})
      : super(key: key);
  Color? color;
  String? text;
  Widget? destination;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return destination!;
        }));
      },
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 16),
        color: color,
        height: 141,
        width: double.infinity,
        child: Text(text!),
      ),
    );
  }
}
