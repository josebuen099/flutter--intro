import 'package:flutter/material.dart';
import 'package:jbmensaje/presentacion/widgets/my_messaje_bubble.dart';
class ChatScreem extends StatelessWidget {
  const ChatScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://play-lh.googleusercontent.com/YrM89YlemAyWGo718U2aFPi7UkJ11jwcg5bXLB5yF6lkr4izUtYoce60KEYPn4zfZzs=s256-rw'),
          ),
        ),
        title: const Text('ChatGptJB'),
        centerTitle: true,

      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 15),
        child: Column(
          children: [
            Expanded(child: ListView.builder(itemBuilder:(context, index) {

              return const MyMessajeBubbe();
              
            }, ),
            ),
            
            Text('mundo')
          ],
        
        ),
      ),
    );
  }
}