import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Middle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Redes Sociais'),
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
          Text(
            '© 2021 Projeto Pi - Desenvolvido por: Alunos Unipam',
          ),
        ],
      ),
      height: 180,
    );
  }
}
