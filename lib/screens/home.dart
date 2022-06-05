import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20,top: 20),
        child: Form(child: Column(
          children: [
            TextFormField(
              
              decoration:const InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'Name',
    
          labelText: 'Enter your Name',

  ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              
              decoration:const InputDecoration(
    border: OutlineInputBorder(
      
    ),
    
    hintText: 'Jobs',
    
          labelText: 'Enter your Jobs',

  ),
            ),
            SizedBox(
              height: 20,
            ),
          GestureDetector(
            onTap: (){
 Navigator.pushNamed(context, 'ReadScreen');
            },

            child: Container(
              height: 30,
              width: double.infinity,
              child: Center(child: Text('Read')),
              color: Colors.deepOrange,
            ),
          )

          ],
        )
        ),
      ),

    );
  }
}