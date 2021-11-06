import 'package:flutter/material.dart';
import 'package:udacity_clone/widgets/custom_card.dart';

class CustomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(100, 15, 0, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SEJA QUAL FOR O SEU NEGOCIO\nNÓS TEMOS A SOLUÇÃO.',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                  color: Colors.grey[850],
                ),
              ),
          
              SizedBox(height: 60),
              Text(
                'ACELERE A TRANSFORMAÇÃO DIGITAL DA SUA EMPRESA.',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 60),
              Column(
                children: [
                  Row(
                    children: [
                      CustomCard(
                        color: Colors.greenAccent,
                        buttonText: 'Implantação',
                        text: 'is simply dummy text of the printing and typesetting industry.\nprinting and typesetting industry ',
                      ),
                      SizedBox(width: 40),
                      CustomCard(
                        color: Colors.greenAccent,
                        buttonText: 'Revitalização',
                        text: 'is simply dummy text of the printing and typesetting industry.',
                      ),

                      //
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          CustomCard(
                            color: Colors.greenAccent,
                            buttonText: 'Customização',
                            text: 'is simply dummy text of the printing and typesetting industry.',
                          ),
                          SizedBox(width: 40, height: 240,),
                          CustomCard(                           
                            color: Colors.greenAccent,
                            buttonText: 'Sustentação',
                            text: 'is simply dummy text of the printing and typesetting industry.',
                          ),

                          //
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
           Image.asset(
            'assets/software.png',
          height: 500,
          ),   
        ],
      ),
    );
  }
}
