import 'package:flutter/material.dart';
import 'package:udacity_clone/const.dart';
import 'package:udacity_clone/widgets/auth_button.dart';
import 'package:udacity_clone/widgets/custom_auth_nav_bar.dart';
import 'package:udacity_clone/widgets/custom_text_field.dart';

class AuthenticationScreen extends StatefulWidget {
  static const routeName = '/authentication';

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}




class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          CustomAuthNavBar(),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width * .45,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          alignment: Alignment.center,
                          child: Text(
                            "Cadastra-se",
                            style: TextStyle(
                                color: Colors.grey.shade900,
                                fontFamily: 'OpenSans',
                                fontSize: 14,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            border: Border(
                              left: BorderSide(
                                  width: 1, color: Colors.grey.shade300),
                              bottom: BorderSide(
                                  width: 1, color: Colors.grey.shade300),
                            ),
                          ),
                          child: Text(
                            "Fazer Login",
                            style: TextStyle(
                                color: Colors.grey.shade900,
                                fontFamily: 'OpenSans',
                                fontSize: 14,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Crie sua Conta',
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 36,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w100),
                  ),
                  SizedBox(height: 30,),
                  Text(                   
                    'Faça o seu Cadastro!\nEducação para preparar sua carreira para o futuro.',
                    
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 16,
                      color: Colors.grey[850],
                      
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AuthButton(
                        'assets/googlelogo.png',
                        'Entrar com o Google',
                      ),
                      SizedBox(width: 40),
                      AuthButton(
                        'assets/facebooklogo.png',
                        'Entrar com o Facebok',
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.lightBlueAccent,
                            height: .3,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'ou',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.lightBlueAccent,
                            height: .3,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Form(
                      child: Column(
                        children: [
                          CustomTextField('Nome'),
                          SizedBox(height: 15),
                          CustomTextField('Sobrenome'),
                          SizedBox(height: 15),
                          CustomTextField('E-mail'),
                          SizedBox(height: 15),
                          CustomTextField('Senha', isPassword: true),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ao clicar em Inscrever-se, você concorda com nossos',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        ' termos de uso ',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Const.OffBlue,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'e ou termos de ',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Privacidade.',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Const.OffBlue,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'CADASTRAR',
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Colors.white,
                          fontSize: 12,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Const.OffBlue),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 25, vertical: 25)),
                      elevation: MaterialStateProperty.all<double>(5),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                      shadowColor:
                          MaterialStateProperty.all<Color>(Const.OffBlue),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
