import 'dart:convert';

import 'package:chatbot_app/model/chatbot_model.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;
import 'package:flutter/widgets.dart';
import 'package:http/http.dart'as http;

class ChatbotProvider  extends ChangeNotifier{

  TextEditingController controller =TextEditingController();
   ChatbotModel?chatResponse;

    sendMessage()async {
   
final headers = {
  'Content-Type': 'application/json',
  'X-goog-api-key': 'AIzaSyCLNee1hlAESJ_Xc0Zg5BQsBrZStnZ0eus'
};

final body = json.encode({
  "contents": [
    {
      "parts": [
        {
          "text":controller.text,
        }
      ]
    }
  ]
});


    final url = Uri.parse(
        "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent");
    var data = await http.post(url,body: body,headers: headers);


    if (data.statusCode==200) {
      var response = jsonDecode(data.body);

    
    chatResponse= ChatbotModel.fromJson(response);
    notifyListeners();



    
      
    } 
  }


}