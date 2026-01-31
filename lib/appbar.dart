import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300, width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Icon(
              Icons.account_balance_wallet,
              color: Colors.green[600],
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          constraints: BoxConstraints(minWidth: 40, minHeight: 40),
          padding: EdgeInsets.zero,
        ),
        SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.person_add_alt,
            color: Colors.black,
          ),
          constraints: BoxConstraints(minHeight: 40, minWidth: 40),
          padding: EdgeInsets.zero,
        ),
      ],
    );
  }
}
