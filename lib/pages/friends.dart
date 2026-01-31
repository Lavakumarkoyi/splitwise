import 'package:flutter/material.dart';
import 'package:splitwise/dues.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          Dues(),
          SizedBox(height: 10),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/DSC05323.jpeg'),
            ),
            title: Text(
              'Lava kumar Koyi',
              style: TextStyle(letterSpacing: 0, fontSize: 14),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'you owe',
                  style: TextStyle(color: Colors.deepOrange, fontSize: 9),
                ),
                Text(
                  '\$79.36',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            contentPadding: EdgeInsets.zero,
          )
        ],
      ),
    );
  }
}
