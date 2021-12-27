import 'package:flutter/material.dart';

class CHAT extends StatefulWidget {
  const CHAT({Key? key}) : super(key: key);

  @override
  _CHATState createState() => _CHATState();
}

class _CHATState extends State<CHAT> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
            'BIG DAWG',
          ),elevation: 0,
          actions: [
            IconButton(onPressed: (){}, icon:Icon(Icons.phone)),
            IconButton(onPressed: (){}, icon: Icon(Icons.video_call))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    label: Text('type your message here....',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,

                    ),),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                    ),


                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      )




      ;
  }
}

