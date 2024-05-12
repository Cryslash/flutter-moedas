import 'package:flutter/material.dart';
import 'dart:math';

class Tela extends StatefulWidget {
  const Tela({super.key});

  @override
  State<Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela> {

  int cara = 0;
  int coroa = 0;

  _lancarMoeda(){
    
    //numero randomico entre 1 e 100
    int random = Random().nextInt(101) + 1;
    String result = "";
        
    if (random % 2 == 0){
      cara++;
      result = "cara";
    }
    else{
      coroa++;
      result = "coroa";
    }
    
    print("Resultado: $result");
    print("Numero de caras $cara");
    print("Numero de coroas $coroa");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: const Color.fromARGB(255, 56, 162, 150),
      body:
      Container( 
        decoration: const BoxDecoration(color: Color.fromRGBO(56, 162, 150, 0)),
        child: Align(
          alignment: Alignment.center,
          child: Column( mainAxisAlignment: MainAxisAlignment.center,  children: [
            SizedBox(
              //decoration: BoxDecoration(border: Border.all(width:1)),
              // height: 250,
              width: 300,            
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [                                        
                    const SizedBox(
                    //decoration: BoxDecoration(border: Border.all(width:1)),
                    height:48,
                    width:48,
                    child: Column(
                      children: [
                        Image( image: NetworkImage('https://cdn.dribbble.com/users/120141/screenshots/1466662/800x600_dribbble.gif')),
                      ]
                    )
                  ),
                  // Icon(
                  //   Icons.circle_rounded,
                  //   color: Colors.yellow[600],
                  //   size: 24.0),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextButton(
                      onPressed: () => _lancarMoeda(), child: const Text("Jogar Moeda")),
                  )                
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
