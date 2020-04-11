
import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();


}

class _ContadorPageState extends State{

final TextStyle _estiloTexto = new TextStyle( fontSize: 40 );
int _conteo = 0;

  @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('STATEFUL'),
      centerTitle: true,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text( 'Numero de taps', style: _estiloTexto),
        Text( '$_conteo', style: _estiloTexto)
      ],
      )
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        print('Hola mundo');
        _conteo++;
        setState(() {});
      },
      child: Icon( Icons.add ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
  );


}
}
