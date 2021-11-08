import 'package:flutter/material.dart';

class EmpathyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //마진 값 넣어야함
          Icon(Icons.receipt_long,color:Colors.blue[300]),
          Text(
            '공감한 게시물',
            style:TextStyle(color:Colors.black),
          ),
          Icon(Icons.more_vert,color:Colors.blue[300]),
          
        ],
        ),
        
      ),
      body:Center(child:Text('Empathy')),
    );
  }
}
