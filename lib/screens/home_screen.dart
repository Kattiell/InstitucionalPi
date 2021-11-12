import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:udacity_clone/widgets/carousel_slider.dart';
import 'package:udacity_clone/widgets/custom_body.dart';
import 'package:udacity_clone/widgets/custom_nav_bar.dart';
import 'package:udacity_clone/widgets/card_como_ajudar.dart';
import 'package:udacity_clone/widgets/left.dart';
import 'package:udacity_clone/widgets/middle.dart';
import 'package:udacity_clone/widgets/right.dart';

import '../custom_dialog_box.dart';

//import '../const.dart';
//import 'authentication_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            //color: Colors.white,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("images/imagem5.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomNavBar(),
                Divider(
                  color: Colors.black,
                ),
                CustomBody(),
                CarouselSlide(),
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Container(
                    color: Colors.black12,
                    width: 1900,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'A PROTEC PRODUTOS AGRÍCOLAS LTDA, fundada em 25/03/1.997,\natua há 21 anos no mercado agrícola do Triângulo Mineiro e Alto Paranaíba.\n Com sede um Uberlândia e 12 filiais no Estado de Minas Gerais,\n comercializamos Insumos Agrícolas como: Fertilizantes Granulados, Sementes, Defensivos Agrícolas e Fertilizantes Foliares.\n Contamos com um total de 205 colaboradores e uma política única de Recursos Humanos... ',
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.grey[850],
                              ),
                            ),
                            // ignore: deprecated_member_use
                            RaisedButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CustomDialogBox(
                                        title:
                                            "'A PROTEC PRODUTOS AGRÍCOLAS LTDA",
                                        descriptions:
                                            "Fundada em 25/03/1.997,atua há 21 anos no mercado agrícola do Triângulo Mineiro e Alto Paranaíba.Com sede um Uberlândia e 12 filiais no Estado de Minas Gerais,comercializamos Insumos Agrícolas como: Fertilizantes Granulados, Sementes, Defensivos Agrícolas e Fertilizantes Foliares.Contamos com um total de 205 colaboradores e uma política única de Recursos Humanos... ",
                                        text: "Sair",
                                      );
                                    });
                              },
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('Images/software2.png'),
                              ),
                            ),
                          ],
                        ),
                        CardHowToHelp(),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Divider(
                      color: Colors.black26,
                      height: 0,
                      thickness: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Left(),
                            VerticalDivider(
                              color: Colors.black38,
                              thickness: 4,
                              endIndent: 15,
                              indent: 10,
                            ),
                            Middle(),
                            VerticalDivider(
                              color: Colors.black38,
                              endIndent: 15,
                              indent: 10,
                              thickness: 4,
                            ),
                            Right(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
