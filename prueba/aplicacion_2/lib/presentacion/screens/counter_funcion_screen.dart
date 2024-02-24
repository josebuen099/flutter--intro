import 'package:flutter/material.dart';

class CounterFuncionScreen extends StatefulWidget {
  const CounterFuncionScreen({super.key});

  @override
  State<CounterFuncionScreen> createState() => _CounterFuncionScreenState();
}

class _CounterFuncionScreenState extends State<CounterFuncionScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Contador appbar',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Custombutton(
              icon: Icons.share,
              onPressed: () {
                setState(() {
                  clickCounter = 1000;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                      fontSize: 90, fontWeight: FontWeight.bold)),
              if (clickCounter > 1)
                const Text('clicks', style: TextStyle(fontSize: 25)),
              if (clickCounter <= 1)
                const Text('click', style: TextStyle(fontSize: 25))
              //if(clickCounter<1)
              //otra forma
              //Text('click${clickCounter<=1?'':'s'}', style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Custombutton(
                icon: Icons.plus_one,
                onPressed: () {
                  setState(() {
                    clickCounter++;
                  });
                }),
            const SizedBox(
              height: 15,
            ),
            Custombutton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  if (clickCounter == 0) {
                    return;
                  } else {
                    clickCounter--;
                  }
                });
              },
            ),
          ],
        ));
  }
}

class Custombutton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const Custombutton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 10,
      backgroundColor: Color.fromARGB(255, 14, 251, 255),
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
