import 'package:flutter/material.dart';

class HerMessajeBubbe extends StatelessWidget {
const HerMessajeBubbe({super.key});

  @override
  Widget build(BuildContext context) {
    final colors =Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text('HOLAa',style: TextStyle(color: Colors.black),),
          ),
        ),
        const SizedBox(height: 5,),
        //Todo:Imagen 
        _ImagenBubble(),
        const SizedBox(height: 10,),

      ],
      
    );
  }
}
class _ImagenBubble extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network('https://yesno.wtf/assets/yes/3-422e51268d64d78241720a7de52fe121.gif'));
  }
}