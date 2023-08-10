import 'package:store_app/features/homepage/data/Models/all_pro_model.dart';

abstract class HomeRepo{

  Future<List<All_product_model>> get_all_pro () ;
  
}