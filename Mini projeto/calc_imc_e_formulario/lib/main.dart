import 'package:flutter/material.dart';
import 'package:teste_flutter/model/exercicio_tela.dart';
import 'package:teste_flutter/model/imc_calc.dart';

/*void main() {
  runApp(const MyApp());
}*/

void main() {
  runApp(IMCCalc());
}

class IMCCalc extends StatelessWidget {
 // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: ExercicioTela()
      debugShowCheckedModeBanner: false,
      home: IMCHomePage(),
    );
  }
}



  


