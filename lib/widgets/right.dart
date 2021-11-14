import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Right extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Estamos Localizados',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.home),
                  color: Colors.black,
                  alignment: Alignment.center,
                  onPressed: () {},
                ),
              ),
              Text(
                'Endereço - Rua Sebastião Nunes Rosa, s/n Nº 115',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.city),
                  color: Colors.cyan,
                  alignment: Alignment.center,
                  onPressed: () {},
                ),
              ),
              Text(
                'Cidade: Mantenópolis no Estado "ES" - CEP: 29778-982',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 13,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ],
      ),
      height: 180,
    );
  }
}
