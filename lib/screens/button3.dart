import 'package:flutter/material.dart';

class Mies extends StatefulWidget {
  const Mies({super.key});
  static const String routeName = '/mies';

  @override
  State<Mies> createState() => _MiesState();
}

class _MiesState extends State<Mies> {
  @override
  Widget build(BuildContext context) {
    //poner el nombre en el medio

    return Scaffold(
      appBar: AppBar(
        title: const Text('MIES'),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            color: Colors.blue,
            //texto
            child: const Center(
              child: Text(
                "MIES",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            //texto
            child: const Center(
              child: Text(
                "MIES",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
