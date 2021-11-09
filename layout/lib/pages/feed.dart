import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {

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
            'FEED',
            style:TextStyle(color:Colors.black),
          ),
          Icon(Icons.more_vert,color:Colors.blue[300]),
        ],
        ),
        
      ),
      body:Column(
        children:[
          Row(
            children: [
              Padding(
              padding:const EdgeInsets.all(8.0),
              child:Container(
                width:80,
                height:80,
                
                decoration:BoxDecoration(
                  shape:BoxShape.circle,
                  color:Colors.blue[300],
                )
              ),
            )
            ],
          )
        ],
        ),
    );
  }
}
