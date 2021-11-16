import 'package:flutter/material.dart';
import 'package:udacity_clone/const.dart';
import 'package:udacity_clone/screens/academico_screen.dart';
import 'package:udacity_clone/screens/authentication_screen.dart';
import 'package:udacity_clone/screens/biblioteca_screen.dart';
import 'package:udacity_clone/screens/eventos_screen.dart';
import 'package:udacity_clone/screens/financeiro_screen.dart';
import 'package:udacity_clone/screens/home_screen.dart';
import 'package:udacity_clone/screens/seguranca_screen.dart';
// ignore: unused_import
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
        children: [
          //MENU do site
          InkWell(
              onTap: () =>
                  Navigator.of(context).pushNamed(HomeScreen.routeName),
              hoverColor: Colors.transparent,
              child: Image.asset('assets/oficina.png', width: 200)),
          Spacer(),
          TextButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(AcademicoScreen.routeName),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blueAccent))),
              backgroundColor: MaterialStateProperty.all<Color>(Const.OffBlue),
              padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 10, vertical: 20)),
              elevation: MaterialStateProperty.all<double>(5),
              shadowColor: MaterialStateProperty.all<Color>(Const.OffBlue),
            ),
            child: Text(
              ' Acadêmico ',
              //TEORICAMENTE O LOGIN
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.5,
              ),
            ),
          ),
          SizedBox(width: 25),
          TextButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(SegurancaScreen.routeName),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blueAccent))),
              backgroundColor: MaterialStateProperty.all<Color>(Const.OffBlue),
              padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 10, vertical: 20)),
              elevation: MaterialStateProperty.all<double>(5),
              shadowColor: MaterialStateProperty.all<Color>(Const.OffBlue),
            ),
            child: Text(
              ' Segurança ', //TEORICAMENTE O LOGIN
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.5,
              ),
            ),
          ),
          SizedBox(width: 25),
          TextButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(BibliotecaScreen.routeName),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blueAccent))),
              backgroundColor: MaterialStateProperty.all<Color>(Const.OffBlue),
              padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 10, vertical: 20)),
              elevation: MaterialStateProperty.all<double>(5),
              shadowColor: MaterialStateProperty.all<Color>(Const.OffBlue),
            ),
            child: Text(
              ' Biblioteca ', //TEORICAMENTE O LOGIN
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.5,
              ),
            ),
          ),
          SizedBox(width: 25),
          TextButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(FinanceiroScreen.routeName),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blueAccent))),
              backgroundColor: MaterialStateProperty.all<Color>(Const.OffBlue),
              padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 10, vertical: 20)),
              elevation: MaterialStateProperty.all<double>(5),
              shadowColor: MaterialStateProperty.all<Color>(Const.OffBlue),
            ),
            child: Text(
              '   Financeiro   ', //TEORICAMENTE O LOGIN
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(width: 25),
          TextButton(
            onPressed: () =>
                Navigator.of(context).pushNamed(EventosScreen.routeName),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blueAccent))),
              backgroundColor: MaterialStateProperty.all<Color>(Const.OffBlue),
              padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 10, vertical: 20)),
              elevation: MaterialStateProperty.all<double>(5),
              shadowColor: MaterialStateProperty.all<Color>(Const.OffBlue),
            ),
            child: Text(
              '      Eventos      ', //TEORICAMENTE O LOGIN

              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(width: 25),
          SizedBox(width: 25),
          Container(
            height: 36.5,
            child: VerticalDivider(
              width: 26,
              color: Colors.black26,
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
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blueAccent))),
              backgroundColor: MaterialStateProperty.all<Color>(Const.OffBlue),
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
