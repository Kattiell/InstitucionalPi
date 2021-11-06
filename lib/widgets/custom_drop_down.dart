import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final String title;

  CustomDropDown(this.title);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.grey.shade600,
          ),
        ],
      ),
      onSelected: (_) {},
      itemBuilder: (_) => [
        PopupMenuItem(
          child: Text('Academico'),
          value: 'test',
        ),
      ],
      // icon: Icon(Icons.keyboard_arrow_down),
    );
  }
}
