
import 'package:store_app/core/api_class.dart';


// ignore: camel_case_types
class get_All_categories_{

  // ignore: non_constant_identifier_names
  Future<List<dynamic>> get_categories () async{

   
    List <dynamic > categories = await api().get_request(URL: 'https://fakestoreapi.com/products/categories',headers: {'Accept':'*/*'}, token: null);
    return categories;
  
}}