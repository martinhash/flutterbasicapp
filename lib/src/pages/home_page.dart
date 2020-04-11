

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

final TextStyle estiloTexto = new TextStyle( fontSize: 40 );

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Titulo'),
      centerTitle: true,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text('Numero de clicks', style: estiloTexto),
        Text('0', style: estiloTexto)
      ],
      )
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon( Icons.apps ),
    ),
  );
  
}


}

