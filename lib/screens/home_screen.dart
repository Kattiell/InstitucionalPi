import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:udacity_clone/widgets/carousel_slider.dart';
import 'package:udacity_clone/widgets/custom_body.dart';
import 'package:udacity_clone/widgets/custom_nav_bar.dart';

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
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                          ],
                        ),
                        Container(
                          child: CircleAvatar(
                            backgroundImage: AssetImage('Images/software2.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Divider(
                      color: Colors.black54,
                      height: 0,
                      thickness: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: IconButton(
                                    icon: FaIcon(FontAwesomeIcons.whatsapp),
                                    color: Colors.green,
                                    alignment: Alignment.center,
                                    onPressed: () {},
                                  ),
                                ),
                                Container(
                                  child: IconButton(
                                    icon: FaIcon(FontAwesomeIcons.instagram),
                                    color: Colors.pink,
                                    alignment: Alignment.center,
                                    onPressed: () {},
                                  ),
                                ),
                                Container(
                                  child: IconButton(
                                    icon: FaIcon(FontAwesomeIcons.facebook),
                                    color: Colors.blue,
                                    alignment: Alignment.center,
                                    onPressed: () {},
                                  ),
                                ),
                                Container(
                                  child: IconButton(
                                    icon: FaIcon(FontAwesomeIcons.github),
                                    color: Colors.black,
                                    alignment: Alignment.center,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              height: 50,
                              child: VerticalDivider(
                                
                                width: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                                '© 2021 Projeto Pi - Desenvolvido por: Alunos Unipam '),
                          ],
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 120,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
