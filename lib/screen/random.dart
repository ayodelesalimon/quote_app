import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:quote_app/model/api_model.dart';

class UserList extends StatefulWidget{

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {

  Future<Quote> quoteApi;

  final String apiUrl = "https://type.fit/api/quotes";

  Future<Quote> fetchUsers() async {

    var result = await http.get(apiUrl);
    return json.decode(result.body);

  }

  
 @override
  void initState() {
    super.initState();
    quoteApi = fetchUsers();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),

      body: Container(
        
      )
      // body: Container(
      //   child: FutureBuilder<Quote>(

      //     future: quoteApi,
      //     builder: (BuildContext context, AsyncSnapshot snapshot) {
      //       if(snapshot.hasData){
              
      //         return ListView.builder(
      //             padding: EdgeInsets.all(8),
      //             itemCount: snapshot.data.length,
      //             itemBuilder: (BuildContext context, int index){
      //               return
      //                 Card(
      //                   child: Column(
      //                     children: <Widget>[
      //                       ListTile(
      //                         leading: CircleAvatar(
      //                           radius: 30,
      //                           //backgroundImage: NetworkImage(snapshot.data[index]['picture']['large']),
      //                           ),
      //                         title: Text(snapshot.data[index]['text']),
      //                         // subtitle: Text(_location(snapshot.data[index])),
      //                         // trailing: Text(_age(snapshot.data[index])),
      //                       )
      //                     ],
      //                   ),
      //                 );
      //             });
            
      //       }
      //       else {
      //         return Column(
      //           children: <Widget>[
      //             Column(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: <Widget>[
      //                 Text("Please Check Your Data Connection"),
      //                 Center(child: CircularProgressIndicator()),
      //               ],
      //             ),
      //           ],
      //         );
      //       }
      //     },


      //   ),
      
    );
  }
}