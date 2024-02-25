import 'package:flutter/material.dart';

class SendMessaje extends StatelessWidget {
  const SendMessaje({super.key});

  @override
  Widget build(BuildContext context) {
    // final color =Theme.of(context).colorScheme;

    final OutlineInputBorder = UnderlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: const BorderSide(color: Colors.transparent));
    return TextFormField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder,
            focusedBorder: OutlineInputBorder,
            filled: true,
            suffixIcon: IconButton(
              icon: const Icon(Icons.send_rounded),
              onPressed: () {},
            )));
  }
}
