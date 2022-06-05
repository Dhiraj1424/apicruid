import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercrudapi/repo/user_repo.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map response={};
      var name=TextEditingController();
    var job=TextEditingController();
      final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20,top: 20),
          child: Column(
            children: [
              TextFormField(
                controller: name,
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
                controller: job,
                decoration:const InputDecoration(
          border: OutlineInputBorder(
              
          ),
          
          hintText: 'Jobs',
          
            labelText: 'Enter your Jobs',
              
              ),
              ),
              const SizedBox(
                height: 20,
              ),
            GestureDetector(
              onTap: (){
               Navigator.pushNamed(context, 'ReadScreen');
              },
              
              child: Container(
                height: 30,
                width: double.infinity,
                child: const Center(child: Text('Read')),
                color: Colors.deepOrange,
              ),
            ),
            SizedBox(height: 10,),
              GestureDetector(
                onTap:  ()async{
                Map data=  await UserRepo().UpdateUser(name.text, job.text);
             setState(() {
                 response=data;
             });
                },
                child: Container(
                  color: Colors.deepOrange,
                  width: double.infinity,
                  height: 30,
                  child: Center(child: Text('Update')),
                ),
              ),

SizedBox(height: 10,),


              GestureDetector(
                onTap:  ()async{
                Map data=  await UserRepo().DeleteUser();
             setState(() {
                 response=data;
             });
                },
                child: Container(
                  color: Colors.deepOrange,
                  width: double.infinity,
                  height: 30,
                  child: Center(child: Text('Delete')),
                ),
              ),

              Container(child: Text(response.toString())),
              
            ],
          ),
          
        ),
      ),

    );
  }
}