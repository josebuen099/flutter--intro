import 'package:flutter/material.dart';

class MyMessajeBubbe extends StatelessWidget {
const MyMessajeBubbe({super.key});

  @override
  Widget build(BuildContext context) {
    final colors =Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: const Text('HOLA',style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}