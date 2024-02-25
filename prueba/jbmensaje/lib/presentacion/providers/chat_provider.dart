import 'package:flutter/material.dart';
import 'package:jbmensaje/domain/entities/messaje.dart';
import 'package:jbmensaje/presentacion/widgets/send_messaje.dart';

class ChatProvider extends ChangeNotifier{
  List<Messaje> mensaje= [
    Messaje(mensaje: 'hola', dequien: FromWho.mio),
    Messaje(mensaje: 'hola?', dequien: FromWho.mio),
  
  ];
 Future<void> sendMessaje(String text ) async{

  //TODO: implementar metodo
 }

} 