import 'package:flutter/material.dart';
import 'package:udacity_clone/screens/home_screen.dart';

class CustomAuthNavBar extends StatelessWidget {
  const CustomAuthNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 10,
      child: InkWell(
        onTap: ()=>Navigator.of(context).pushNamed(HomeScreen.routeName),
        hoverColor: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          width: 200,
          
          child: Image.asset(
            'assets/oficina.png',
            height: 40,
          ),
        ),
      ),
    );
  }
}
