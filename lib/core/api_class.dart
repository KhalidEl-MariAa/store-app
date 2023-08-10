// ignore_for_file: non_constant_identifier_names

import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class api{
  
   // get request
  Future <dynamic> get_request( {required String URL,required Map<String,String> headers,@required String? token})async{
    if(token!=null){
     headers.addAll({'Authorization':'Bearer $token'});
    }
      
      
      http.Response response = await http.get(Uri.parse(URL),headers: headers);
      
      if(response.statusCode==200){
       List <dynamic> data = jsonDecode(response.body);
       return data;
      }
      else {
        throw Exception("There is an problem with the status code of get request : ${response.statusCode} and the body is : ${response.body}");
      }
      

  }

  //post request
Future <dynamic> post_request({required String URL,required Map<String,dynamic> body,required Map<String,String> headers,@required String? token})async{
  if (token!=null){
    headers.addAll({'Authorization':'Bearer $token'});
  }
http.Response response= await http.post(Uri.parse(URL),body: body,headers: headers);
if (response.statusCode==200){
  return jsonDecode(response.body);
}
else{
  throw Exception("There is an problem with the status code of post request : ${response.statusCode} and the body is : ${response.body}");
}
}



// put request (update product)
Future <dynamic> put_request({required String URL,required Map<String,dynamic> body,required Map<String,String> headers,@required String? token})async{
  if (token!=null){
    headers.addAll({'Authorization':'Bearer $token'});
  }
http.Response response= await http.put(Uri.parse(URL),body: body,headers: headers);
if (response.statusCode==200){
  return jsonDecode(response.body);
}
else{
  throw Exception("There is an problem with the status code of post request : ${response.statusCode} and the body is : ${response.body}");
}
}


}
