import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController weightController = new TextEditingController();
  TextEditingController heightController = new TextEditingController();
  String _textInfo = 'Informe seus dados!';

  void _resetFields(){
    weightController.clear();
    heightController.clear();
    setState(() {
      _textInfo = 'Informe seus dados!';
      
    });
  }

  void _calculator(){
    setState(() {
      double weight = double.parse(weightController.text);
      double height = double.parse(heightController.text) / 100;
      double imc = weight / (height * height);

      
      if(imc < 18.6){
        _textInfo = "Abaixo do Peso (${imc.toStringAsPrecision(3)})";
      }else if(imc >= 18.6 && imc < 24.9){
        _textInfo = "Peso Ideal (${imc.toStringAsPrecision(3)})";
      }else if(imc >= 24.9 && imc < 29.9){
        _textInfo = "Levemente Acima do Peso (${imc.toStringAsPrecision(3)})";
      }else if(imc >= 29.9 && imc < 34.9){
        _textInfo = "Obesidade Grau I (${imc.toStringAsPrecision(3)})";
      }else if(imc >= 34.9 && imc < 39.9){
        _textInfo = "Obesidade Grau II (${imc.toStringAsPrecision(3)})";
      }else if(imc >= 40){
        _textInfo = "Obesidade Grau III (${imc.toStringAsPrecision(3)})";
      }
      
    });


  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed:() {
              _resetFields();
            } ,
            icon: const Icon(Icons.refresh)
            )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.person_outline,
              size: 120,
              color: Colors.green,
              
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Peso (kg)',
                labelStyle: TextStyle(color: Colors.green)
              ),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 25
              ),
              controller: weightController,
            ),
      
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Altura (cm)',
                labelStyle: TextStyle(color: Colors.green)
              ),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 25
              ),
              controller: heightController,
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 10),
              child: Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: _calculator,
                  child: const Text(
                    'Calcular',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                    ),
                    ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green
                  )
      
                  ),
              ),
            ),
      
            Text(
              _textInfo,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 25
              ),
            )
            
          ],
        ),
      ),
    );
  }
}