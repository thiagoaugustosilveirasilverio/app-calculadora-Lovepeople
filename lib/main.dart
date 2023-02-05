import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Calculadora(),
    );
  }
}

class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        color: Colors.black,
        padding: EdgeInsets.only(top:100),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:[
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                '1,337', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
            ),
           ),
          ),
            
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _constoiBotao('C'),
                _constoiBotao('+/-'),
                _constoiBotao('%'),
                _constoiBotao('/', color: Colors.orange),
              ],
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _constoiBotao('7', color: Colors.grey.shade800),
                _constoiBotao('8', color: Colors.grey.shade800),
                _constoiBotao('9', color: Colors.grey.shade800),
                _constoiBotao('x', color: Colors.orange),
              ],
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _constoiBotao('4', color: Colors.grey.shade800),
                _constoiBotao('5', color:  Colors.grey.shade800),
                _constoiBotao('6', color: Colors.grey.shade800),
                _constoiBotao('-', color: Colors.orange),
              ],
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _constoiBotao('1', color: Colors.grey.shade800),
                _constoiBotao('2', color: Colors.grey.shade800),
                _constoiBotao('3', color: Colors.grey.shade800),
                _constoiBotao('+', color: Colors.orange),
              ],
            ),
            Container(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _constoiBotaoMaior(), 
                _constoiBotao('.', color: Colors.grey.shade800),
                _constoiBotao('=', color: Colors.orange),
                
                
              ],
            ),
          ],    
         ),
        ),
       );
    
     
  }
  Widget _constoiBotao(String text, {Color color = Colors.grey}) {
    return SizedBox(
      width: 65,
      height: 65,
      child: ElevatedButton(
      onPressed: () {}, 
      style: ButtonStyle(

        shape: MaterialStateProperty.all(
          const CircleBorder(),
        ),
        backgroundColor: MaterialStateProperty.all(color),
      ),
      child: Text(
        text, 
        style: TextStyle(
          fontSize: 22,
          color: color == Colors.grey ? Colors.black : Colors.white,
      ),
      ),
      ),
    );
  }
   Widget _constoiBotaoMaior() {
    return SizedBox(
      width: 184,
      height: 60,
      child: ElevatedButton(
      onPressed: () {}, 
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          const StadiumBorder(),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.grey.shade800),
        alignment: Alignment.centerLeft,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
           child: const Text(
          '0',
           style: const TextStyle(
           fontSize: 22,
         ),
        )
     
        ),
      ),
    );
  }
}