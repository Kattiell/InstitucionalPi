import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Left extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Entre em Contato Conosco',
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
                  icon: FaIcon(FontAwesomeIcons.phone),
                  color: Colors.black,
                  alignment: Alignment.center,
                  onPressed: () {},
                ),
              ),
              Text(
                '+00 (00) 0 0000-0000',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
              VerticalDivider(
                color: Colors.black38,
                endIndent: 6,
                indent: 10,
                thickness: 4,
              ),
              Container(
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.whatsapp),
                  color: Colors.green,
                  alignment: Alignment.center,
                  onPressed: () {},
                ),
              ),
              Text(
                '+99 99 9999-9999',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 13,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.mailBulk),
                  color: Colors.cyan,
                  alignment: Alignment.center,
                  onPressed: () {},
                ),
              ),
              Text(
                'InstitucionalContact@gmail.com',
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
