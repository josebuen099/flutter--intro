import 'package:flutter/material.dart';

class CounterFuncionScreen extends StatefulWidget {
  const CounterFuncionScreen({super.key});

  @override
  State<CounterFuncionScreen> createState() => _CounterFuncionScreenState();
}

class _CounterFuncionScreenState extends State<CounterFuncionScreen> {
  int clickCounter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('contador appbar',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
        actions: [
          IconButton(
                    icon:const Icon(Icons.refresh_rounded),

          onPressed: () { 
            setState(() {
              clickCounter=0;
            });
         },),
         
        ],
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [FloatingActionButton(
           shape: const StadiumBorder(),
        onPressed: () {
          
          setState(() {
            clickCounter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
      const SizedBox(height: 15,),
      FloatingActionButton(
        shape: const StadiumBorder(),
        onPressed: () {
          
          
          setState(() {
            if(clickCounter<=0){
              const Text('no puede ingresar numeros negativos');

            }else{ 
              clickCounter--;

            }

            

          });
        },
        child: const Icon(Icons.exposure_minus_1_outlined),
      ),
      ],
      )
    );
  }
}
