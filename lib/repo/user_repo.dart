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



 Future<Map> SendUser(String name,job)async{
    List<UserModel>mylist=[];


try{
    final response = await http.post(Uri.parse('https://reqres.in/api/users'),
body:{
  'name':name,
  'job':job
});
  if(response.statusCode==201){
    Map data=json.decode(response.body);
    return data;
  }
  else {
        print(response.reasonPhrase);
        return {"error": "Something went wrong"};
      }
}
 catch (e){
  throw e;
}
  } 
  
 Future<Map> UpdateUser(String name,job)async{
    List<UserModel>mylist=[];


try{
    final response = await http.put(Uri.parse('https://reqres.in/api/users/2'),
body:{
  'name':name,
  'job':job
});
  if(response.statusCode==200){
    Map data=json.decode(response.body);
    return data;
  }
  else {
        print(response.reasonPhrase);
        return {"error": "Something went wrong"};
      }
}
 catch (e){
  throw e;
}
  } 



 Future<Map> DeleteUser()async{
try{
    final response = await http.delete(Uri.parse('https://reqres.in/api/users/2'),);

  if(response.statusCode==204){
    Map data=json.decode(response.body);
    return {"sucess":'delete api'};
  }
  else {
        print(response.reasonPhrase);
        return {"error": "Something went wrong"};
      }
}
 catch (e){
  throw e;
}
  } 

}