import 'package:chatbot_app/view/chatbot_screen.dart';

import 'package:flutter/material.dart';


class ChatbotImage extends StatelessWidget {
  const ChatbotImage({super.key});

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;

    return Scaffold(


      body: Column(children: [
        Container(
          height: size.height,
          width: size.width,


           decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSprIdek7gm1fS0Ylx9csITWQXzSmfTP_bRg&s"),fit: BoxFit.cover)),

           child: 
           Column(
            children: [
                Image.asset("flower/zechat.png",height: 500,width: 600,),

                ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white, // Button color
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30), // Rounded edges
    ),
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
  ),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChatbotScreen()), // Chatbot wali screen
    );
  },
  child: Text(
    "Open ZeeChat",
    style: TextStyle(
      color: Color(0xff173A53), // Text color (contrast with button)
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
)

            ],
           ),

        )
      ],),
    );
  }
}