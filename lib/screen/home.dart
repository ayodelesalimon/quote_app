import 'dart:math';

import 'package:flutter/material.dart';


import 'package:quote_app/util/quote_util.dart';
import 'package:share/share.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isFavourite;
  int _index = 0;

  String url ="https://picsum.photos/200/300?grayscale";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: () {}),
        ],
        centerTitle: true,
        title: Text(
          "Quote App",
        ),
      ),
      body: SafeArea(
        child: 
            ListView(
                children: <Widget>[
                  Container(
                    
                    child: _getCard(),
                  ),
           

          
        
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: <Widget>[
        //       Center(
        //         child: FlatButton(
        //           color: Colors.white38,
        //           onPressed: () {
        //             _changeQuote();
        //           },
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.end,
        //             mainAxisSize: MainAxisSize.min,
        //             children: <Widget>[
        //               // Text(
        //               //   "Next Quote",
        //               //   style: TextStyle(color: Colors.white70),
        //               // ),
        //               Icon(Icons.arrow_forward, color: Colors.white70),
        //             ],
        //           ),
        //         ),
        //       ),
        //   ],
        // ),

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //       IconButton(
        //           icon: Icon(Icons.share, color: Colors.white70),
        //           onPressed: () {
        //             final RenderBox box = context.findRenderObject();
        //             Share.share(quote[_index].quote,
        //                 subject: "",
        //                 sharePositionOrigin:
        //                     box.localToGlobal(Offset.zero) & box.size);
        //           }),
        //       IconButton(
        //           icon: Icon(Icons.favorite_border
        //               // alreadySaved ? Icons.favorite : Icons.favorite_border,
        //               // color: alreadySaved ? Colors.red : null,
        //               ),
        //           onPressed: () {}),
        //   ],
        // ),
           ],
              ),
            ),
        
      
    );
  }

  Container _getCard() {
    return Container(
     // height: 320,
     // margin: EdgeInsets.all(70.0),
      decoration: BoxDecoration(
        color: Colors.amberAccent,
         //borderRadius: BorderRadius.all(Radius.circular(10.0),),
      //   image: DecorationImage(fit: BoxFit.fill,
      //   image: NetworkImage(url),),
       ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(
                child: Text(
                  quote[_index].quote,
                  style: TextStyle(
                      color: Colors.white70,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
            ),
          ),
          // Divider(
          //   thickness: 1.0,
          // ),
          SizedBox(
            height: 15.0,
          ),

          Center(
              child: Container(
            child: Text(
              quote[_index].quoteAuthor,
              style: TextStyle(
                  color: Colors.white70,
                  fontFamily: 'Oxygen',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
          )),

          SizedBox(
            height: 15.0,
          ),
        
          Center(
            child: FlatButton(
              color: Colors.white38,
              onPressed: () {
                _changeQuote();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // Text(
                  //   "Next Quote",
                  //   style: TextStyle(color: Colors.white70),
                  // ),
                  Icon(Icons.arrow_forward, color: Colors.white70),
                ],
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.share, color: Colors.white70),
                  onPressed: () {
                    final RenderBox box = context.findRenderObject();
                    Share.share(quote[_index].quote,
                        subject: "",
                        sharePositionOrigin:
                            box.localToGlobal(Offset.zero) & box.size);
                  }),
              IconButton(
                  icon: Icon(Icons.favorite_border
                      // alreadySaved ? Icons.favorite : Icons.favorite_border,
                      // color: alreadySaved ? Colors.red : null,
                      ),
                  onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
  // ClipPath _avatarCard() {
  //   return ClipPath(
  //           clipper: RoundedDiagonalPathClipper(),
  //           child: Container(
  //             height: 320,
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.all(Radius.circular(50.0)),
  //               color: Colors.orange,
  //             ),
  //             child: Center(child: Text("RoundedDiagonalPathClipper()")),
  //           ),
  //         );
  // }

  void _changeQuote() {
    setState(() {
      _index = Random().nextInt(50) + 1;
     // _indexImg = Random().nextInt(4) + 1;
      //String url = "https://picsum.photos/200/300?grayscale";   
      });
  }

  // #docregion RWS-var
}
// #en
