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
              
            } ,
            icon: const Icon(Icons.refresh)
            )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.person_outline,
              size: 120,
              color: Colors.green,
              
            ),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Peso (kg)',
                labelStyle: TextStyle(color: Colors.green)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
                fontSize: 25
              ),
            ),
      
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Altura (cm)',
                labelStyle: TextStyle(color: Colors.green)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
                fontSize: 25
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 10),
              child: Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
      
                  },
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
      
            const Text(
              'Infor',
              textAlign: TextAlign.center,
              style: TextStyle(
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