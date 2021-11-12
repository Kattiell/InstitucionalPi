import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardHowToHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          color: Color(0xffF1F4F7),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: 15,
            bottom: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4, top: 10),
                child: Text(
                  "COMO AJUDAR ?",
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    color: Colors.grey,
                    hoverColor: Color(0xff1ED760),
                    iconSize: 28,
                    icon: FaIcon(FontAwesomeIcons.checkCircle),
                    onPressed: () {},
                  ),
                  Text(
                    "Doações de produtos para o lanche e/ou material de limpeza.",
                    style: TextStyle(fontSize: 25, fontFamily: 'OpenSans',),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    color: Colors.grey,
                    hoverColor: Colors.green,
                    iconSize: 28,
                    icon: FaIcon(FontAwesomeIcons.checkCircle),
                    onPressed: () {},
                  ),
                  Text(
                    "Doações em dinheiro valor indeterminado.",
                    style: TextStyle(fontSize: 25, fontFamily: 'OpenSans',),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    color: Colors.grey,
                    hoverColor: Colors.green,
                    iconSize: 28,
                    icon: FaIcon(FontAwesomeIcons.checkCircle),
                    onPressed: () {},
                  ),
                  Text(
                    "Doações de livros de literatura lançados recentemente para a biblioteca.",
                    style: TextStyle(fontSize: 25, fontFamily: 'OpenSans',),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    color: Colors.grey,
                    hoverColor: Colors.green,
                    iconSize: 28,
                    icon: FaIcon(FontAwesomeIcons.checkCircle),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: Text(
                      "Se tornar um patrocinador do projeto com o valor de 7 x R\$ 430,00 possibilitando a vaga para mais um aluno. Isso incluirá você ao nosso quadro de patrocinadores.",
                      style: TextStyle(fontSize: 25,fontFamily: 'OpenSans',),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    color: Colors.grey,
                    hoverColor: Colors.green,
                    iconSize: 28,
                    icon: FaIcon(FontAwesomeIcons.checkCircle),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: Text(
                      "Através de prestação de serviço que o Instituto esteja necessitando o que o incluirá como Parceiro.",
                      style: TextStyle(fontSize: 25, fontFamily: 'OpenSans',),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}