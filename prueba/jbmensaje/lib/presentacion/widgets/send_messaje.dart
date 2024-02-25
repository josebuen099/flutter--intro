
import 'package:flutter/material.dart';

class SendMessaje extends StatelessWidget {
  const SendMessaje({super.key});

  @override
  Widget build(BuildContext context) {

    final textxControl = TextEditingController();
    final focustext = FocusNode();
    // final color =Theme.of(context).colorScheme;
     final OutlineInputBorder = UnderlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: const BorderSide(color: Colors.transparent));


    final customDecoration =InputDecoration(
      hintText: 'INGRESA TU PREGUNTA "?"',
            enabledBorder: OutlineInputBorder,
            focusedBorder: OutlineInputBorder,
            filled: true,
            suffixIcon: IconButton(
              icon: const Icon(Icons.send_rounded),
            
              onPressed: () {
                final textValue = textxControl.value.text;

                print('$textValue');
                  textxControl.clear();


              },
            ));

   
    return TextFormField(
      onTapOutside: (event){
        focustext.unfocus();
      },

    
      focusNode: focustext,
      controller: textxControl,
        decoration: customDecoration,
        onFieldSubmitted: (value){
          print ('mensaje: $value');
          textxControl.clear();
          focustext.requestFocus();

        },
    );
  }
}
