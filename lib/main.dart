import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Color(0xFFFFBF69)
,
          title: const Text('Welcome to Flasher'),
          centerTitle: true,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
            const Text('Welcome to Kroger :)', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            const Text('Flash your hazards so we can bring you a cart!'),

            //the container for the button and the button
            Container(margin: const EdgeInsets.all(20), 
            child: ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BluePage()),
              );
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFfcaf58),
                elevation: 10,
              ),
              child: const Text('Flash your Hazards', 
              style: TextStyle(
                color: Colors.black,
                )),),
            ),
          ],)
        ),
      ),
    );
  }
}


class BluePage extends StatelessWidget {
  const BluePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Color(0xFF4e598c)
,
          title: const Text('Thank You!'),
          centerTitle: true,
        ),

        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
            Text('Help is on the way!', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
          ],)
        ),
      ),
    );
  }
}