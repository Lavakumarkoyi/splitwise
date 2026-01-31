import 'package:flutter/material.dart';

class Dues extends StatefulWidget {
  const Dues({super.key});

  @override
  State<Dues> createState() => _DuesState();
}

class _DuesState extends State<Dues> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
            children: [
              TextSpan(
                text: 'Overall, you owe ',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              TextSpan(
                text: '\$5,790.11',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        // Text('Overall, you owe \$5,790.11'),
        Icon(Icons.tune),
      ],
    );
  }
}
