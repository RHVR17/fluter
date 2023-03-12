import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // MyApp({super.key});
 dynamic contador = 10;
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi app', 
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
          
            title: const Align(
              alignment: Alignment.centerRight,
              child: Text('Aplicacion de operaciones'),
            ),
          ),
          body: Center(
           
            child: Column(
              mainAxisSize: MainAxisSize.min,
             
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Operaciones',
                  style: TextStyle(fontSize: 30.0, color: Colors.blue),
                ),
                Text('$contador ',style: TextStyle(fontSize: 28.0, color: Colors.blueGrey),
                ),
                
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.red,
                child: const Icon(Icons.exposure_minus_2),
                onPressed: () {

                  contador=contador-2;

                  setState(() {});
             
                },
              ),

              const SizedBox(width: 15),
              FloatingActionButton(
                child: const Icon(Icons.clear),
                onPressed: () {
                  
                  contador=contador*2;

                  setState(() {});
                },
              ),
              //
              const SizedBox(width: 15),
              FloatingActionButton(
                child: const Icon(Icons.vertical_align_center),
                onPressed: () {
                  contador=contador/2;

                  setState(() {});
                },
              ),
              //
              const SizedBox(width: 15),
              FloatingActionButton(
                child: const Icon(Icons.exposure_plus_2),
                onPressed: () {
                  contador=contador+2;

                  setState(() {});
                },
              ),
            ],
          )),
    );
  }
}
