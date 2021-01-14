import 'dart:math';

import 'package:cara_coroa/resultado.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _faceMoeda = '';

  void _jogar(){
    Navigator.push(
        context, 
        MaterialPageRoute(
            builder: (context) => Resultado(this._resultado())
        )
    );
    
  }

  String _resultado(){

    int _numero = new Random().nextInt(2);

    if(_numero == 1){

       this._faceMoeda = 'images/moeda_cara.png';

    }else{

      this._faceMoeda = 'images/moeda_coroa.png';
    }

    return this._faceMoeda;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/logo.png'),
            GestureDetector(
              onTap: _jogar,
              child: Image.asset('images/botao_jogar.png'),
            )
          ],
        ),
      ),
    );
  }
}
