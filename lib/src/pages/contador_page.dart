import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

/// Clase privada para definir el State del contador
class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _counter = 0;

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
          children: [
            Text('Número de taps:', style: _estiloTexto),
            Text('$_counter', style: _estiloTexto),
          ],
        ),
      ),
      floatingActionButton: _bottomButtons(),
    );
  }

  Widget _bottomButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          onPressed: _resetCounter,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          onPressed: _decrementCounter,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: _incrementCounter,
          child: Icon(Icons.add),
        )
      ],
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }
}
