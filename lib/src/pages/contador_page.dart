
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

    floatingActionButton: _crearBotones() ,
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
  );
}


Widget _crearBotones(){

return Row(
  mainAxisAlignment: MainAxisAlignment.end, 
  children: <Widget>[
  SizedBox( width: 10 ),
  FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _resetear, ),
  Expanded( child: SizedBox() ),
  FloatingActionButton( child: Icon(Icons.remove), onPressed: _eliminar, ),
  SizedBox( width: 5.0 ),
  FloatingActionButton( child: Icon(Icons.add), onPressed: _agregar, ),
  SizedBox( width: 5.0 ),
  
], );
}

void _agregar(){
  _conteo++;
  setState(() {});
}

void _eliminar(){
  _conteo--;
  setState(() {});
}

void _resetear(){
  _conteo = 0;
  setState(() {});
}

}
