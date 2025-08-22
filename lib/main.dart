import 'package:chatbot_app/controller/provider/chatbot_provider.dart';
import 'package:chatbot_app/view/chatbot_screen.dart';
import 'package:chatbot_app/view/chatbotimage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
     MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (context) => ChatbotProvider())
      ],
       child: MaterialApp(

      
       debugShowCheckedModeBanner: false,
        home:ChatbotImage()
           ),
     );
  }
}
