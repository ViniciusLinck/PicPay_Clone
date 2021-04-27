import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  final bool isSelected;
  final String text;
  final IconData icon;

  const BottomMenu({this.isSelected, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.green : Colors.black,
          ),
          Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.green : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
