import 'package:flutter/material.dart';
import 'package:jbmensaje/config/themes/Themes_customs.dart';
import 'package:jbmensaje/presentacion/screems/chat/chat_screem.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ChangeNotifier())

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: ThemesCustoms(selectColor:4 ).theme(),
        home: const ChatScreem(), 
      ),
    );
  }
}
