import 'package:flutter/material.dart';


class IMCHomePage extends StatefulWidget {
  @override
  _IMCHomePageState createState() => _IMCHomePageState();
}

class _IMCHomePageState extends State<IMCHomePage> {
  final TextEditingController _pesoController = TextEditingController();
  final TextEditingController _alturaController = TextEditingController();
  double _imc = 0;
  String _resultado = '';
  Color _corResultado = Colors.blue;
  String _imagePath = 'assets/underweight.png';

  void _calcularIMC() {
    double peso = double.parse(_pesoController.text);
    double altura = double.parse(_alturaController.text) / 100; // converter cm para metros

    setState(() {
      _imc = peso / (altura * altura);
      if (_imc < 18.5) {
        _resultado = 'Abaixo do Peso';
        _corResultado = Colors.blue;
        _imagePath = 'assets/underweight.png';
      } else if (_imc >= 18.5 && _imc < 25) {
        _resultado = 'Peso Normal';
        _corResultado = Colors.green;
        _imagePath = 'assets/normal.png';
      } else if (_imc >= 25 && _imc < 30) {
        _resultado = 'Sobrepeso';
        _corResultado = Colors.yellowAccent;
        _imagePath = 'assets/overweight.png';
      } else if (_imc >= 30 && _imc < 35) {
        _resultado = 'Obesidade Grau I';
        _corResultado = Colors.orangeAccent;
        _imagePath = 'assets/obesity1.png';
      } else if (_imc >= 35 && _imc < 40) {
        _resultado = 'Obesidade Grau II';
        _corResultado = Colors.orange;
        _imagePath = 'assets/obesity2.png';
      } else {
        _resultado = 'Obesidade Mórbida';
        _corResultado = Colors.red;
        _imagePath = 'assets/morbid_obesity.png';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC - IMCal'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _pesoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Peso (kg)',
              ),
            ),
            TextField(
              controller: _alturaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Altura (cm)',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calcularIMC,
              child: Text('Calcular IMC'),
            ),
            SizedBox(height: 20),
            Text(
              'IMC: ${_imc.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              _resultado,
              style: TextStyle(fontSize: 24, color: _corResultado),
            ),
            SizedBox(height: 20),
            Expanded(
              child: _imc > 0
                  ? Image.asset(_imagePath)
                  : Container(),
                   
            ),
             
          ],
        ),
      ),
    );
  }
}
