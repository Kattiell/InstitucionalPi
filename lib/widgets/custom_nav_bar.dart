import 'package:flutter/material.dart';
import 'package:udacity_clone/const.dart';
import 'package:udacity_clone/screens/authentication_screen.dart';
import 'package:udacity_clone/screens/home_screen.dart';
import 'package:udacity_clone/widgets/custom_drop_down.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
      child: Row(
        children: [ //MENU do site
          InkWell(
              onTap: ()=>Navigator.of(context).pushNamed(HomeScreen.routeName),
              hoverColor: Colors.transparent,child: Image.asset('assets/oficina.png', width: 200)),
          Spacer(),
          CustomDropDown('Acadêmico'),
          SizedBox(width: 25),
          CustomDropDown('Segurança'),
          SizedBox(width: 25),
          CustomDropDown('Biblioteca'),
          SizedBox(width: 25),
          CustomDropDown('Financeiro'),
          SizedBox(width: 25),
          CustomDropDown('Eventos'),
          SizedBox(width: 25),
          SizedBox(width: 25),
          Container(
            height: 20,
            child: VerticalDivider(
              width: 1,
            ),
          ),
          SizedBox(width: 25),        
          SizedBox(width: 25),
          TextButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(AuthenticationScreen.routeName),
            child: Text(
              'COMECE AQUI', //TEORICAMENTE O LOGIN
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontSize: 12,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold),
            ),
            style: ButtonStyle(

              backgroundColor:
                  MaterialStateProperty.all<Color>(Const.OffBlue),
              padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 10, vertical: 20)),
              elevation: MaterialStateProperty.all<double>(5),
              shadowColor: MaterialStateProperty.all<Color>(Const.OffBlue),
            ),
          ),
        ],
      ),
    );
  }
}
