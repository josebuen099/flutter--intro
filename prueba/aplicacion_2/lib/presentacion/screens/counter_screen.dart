import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('contador material 3',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
      ),
      body:  Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: const TextStyle(fontSize: 160, fontWeight: FontWeight.bold)),
            if(clickCounter>1)
           const Text('clicks', style: TextStyle(fontSize: 25)),
           if(clickCounter<=1)
           const Text('click', style: TextStyle(fontSize: 25))
           //if(clickCounter<1)
            //otra forma 
             //Text('click${clickCounter<=1?'':'s'}', style: const TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
          setState(() {
            clickCounter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
