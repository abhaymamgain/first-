

import 'package:first/CHAT.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

 home: DogPro(),
  routes: {
   '/CHAT': (context) => CHAT(),
  },
));

class DogPro extends StatefulWidget {

 @override
  _DogProState createState() => _DogProState();
}

class _DogProState extends State<DogPro> {
  String follow='Follow', add='Add';
  void changedata(){
    setState(() {
      follow='Following';
    });
  }
  void changedata1(){
    setState(() {
      add='added';
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     backgroundColor: Colors.grey[900],
     appBar: AppBar(backgroundColor: Colors.black,
      title: Text('Instagram ID '),
      centerTitle: true,
      elevation: 0.0,

     ),

     body:Padding(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 30),
      child:Column(
          children:<Widget> [
          SizedBox(height:40),
      Center(
       child: CircleAvatar(
        backgroundColor: Colors.red,
        radius:82.0,
         child: CircleAvatar(
           backgroundImage: AssetImage('assests/dog.jfif'),
           radius: 80,
         ),



       ),

      ),
      SizedBox(height:20),
      Text('BIG DAWG',
       style: TextStyle(
        color: Colors.red[50],
        fontSize: 30,

       ),
      ),
      SizedBox(height:40),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: RaisedButton(onPressed: (){
                   changedata();

                 },child: Text(follow,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                 ),),
                   color: Colors.blue[300],
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(Radius.circular(16.0))),

                 ) ,
                 ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(onPressed: (){
                    changedata1();
                    showDialog(context: context,
                        builder: (BuildContext context){
                      return Center(
                        child: SimpleDialog(
                          title: Center(child: Text('USER ADDED SUCCESSFULLY')),
                        ),
                      );
                        }


                    );



                  },child: Text(add,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                    color: Colors.blue[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),

                  ) ,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(onPressed: (){
                    Navigator.pushNamed(context, '/CHAT');

                  },child: Text('Message',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                    color: Colors.blue[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),

                  ) ,
                ),



              ],
             ),
           ),







      ],

     ),


    ),
   )

   ;
  }
}







