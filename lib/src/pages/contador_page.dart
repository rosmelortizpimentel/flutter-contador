import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final String _title = 'Contador';
  int _conteo = 0;
  final _estiloTexto = const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(0, 0, 0, 1));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_title),
          centerTitle: true,
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Número de taps:', style: _estiloTexto),
          Text('$_conteo', style: _estiloTexto),
        ])),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const SizedBox(width: 30),
        FloatingActionButton(
            child: const Icon(Icons.exposure_zero), onPressed: _reset),
        const Expanded(child: SizedBox()),
        FloatingActionButton(
            child: const Icon(Icons.remove), onPressed: _sustraer),
        const SizedBox(width: 5.0),
        FloatingActionButton(child: const Icon(Icons.add), onPressed: _agregar),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
