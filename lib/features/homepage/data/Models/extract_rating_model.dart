class Extract_rating_map{
  dynamic rate;
  dynamic count;

Extract_rating_map({required this.rate,required this.count});

factory Extract_rating_map.myjson (data_json){
  return Extract_rating_map(rate: data_json['rate'],
  count: data_json['count']);
}
}



class All_product_model_up{

  int iid;
  String ttitle;
  dynamic pprice;
  String ccategory;
   String ddescription;
   String Iimage;
 


 

   All_product_model_up({required this.iid,required this.pprice,required this.ttitle,required this.ccategory,required this.ddescription,required this.Iimage});


factory All_product_model_up.myjson(data_json){
  
  
  
  return All_product_model_up(
    iid: data_json['id'],
  ttitle: data_json['title'],
   pprice:   data_json['price'],
   ccategory: data_json['category'],
   Iimage:  data_json['image'],
   ddescription: data_json['description']);
   
}}