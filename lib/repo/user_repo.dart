import 'package:fluttercrudapi/models/usermodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserRepo{
  Future<List<UserModel>> getUser()async{
    List<UserModel>mylist=[];

final response=await(http.get(Uri.parse('https://reqres.in/api/users?page=2')));
try{
  if(response.statusCode==200){
    var jsonDecode=await json.decode(response.body);
  for(var i in jsonDecode['data']){
    // mylist.add(UserModel.fromjson(i));
    UserModel model=UserModel.fromjson(i);
    mylist.add(model);
  }
        return mylist;

  }
else{
        return mylist;

}
}
catch (e){
  throw e;
}
  }
}