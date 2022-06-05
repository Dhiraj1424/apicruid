import 'package:flutter/material.dart';
import 'package:fluttercrudapi/models/usermodel.dart';
import 'package:fluttercrudapi/repo/user_repo.dart';

class ReadScreen extends StatefulWidget {
  const ReadScreen({ Key? key }) : super(key: key);

  @override
  State<ReadScreen> createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
    List<UserModel>list=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()async{
        List<UserModel>lists=await UserRepo().getUser();
        setState(() {
          list=lists;
          print("Data ${list.first.first_name}");
        });
      },
      child: Text('Read'),
      ),
      appBar: AppBar(),
      body:ListView.builder(
        itemCount:list.length,
        itemBuilder: ((context, index) {
        return ListTile(
          title: Text(list[index].first_name),
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(list[index].avatar),
            
          ),
          subtitle: Text(list[index].email),

        );
      }))
    );
  }
}