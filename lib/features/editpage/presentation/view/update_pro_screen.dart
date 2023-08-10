import 'package:flutter/material.dart';
import 'package:store_app/core/Constants/factors.dart';
import 'package:store_app/core/api_class.dart';
import 'package:store_app/features/editpage/data/repostries/editRepoImpl.dart';
import 'package:store_app/features/homepage/data/Models/all_pro_model.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart'; 
class Update_pro_Screen extends StatefulWidget {
   Update_pro_Screen({super.key});
  static String id='Update product screen';

  @override
  State<Update_pro_Screen> createState() => _Update_pro_ScreenState();
}

class _Update_pro_ScreenState extends State<Update_pro_Screen> {
  String? Prod_name;

  String? Title;

  dynamic price;

  String? Description;

  String? Image;

  bool inAsyncCall=false;
  



  @override
  Widget build(BuildContext context) {
    All_product_model product=ModalRoute.of(context)!.settings.arguments as All_product_model;
    return ModalProgressHUD(
      inAsyncCall:inAsyncCall ,
      child: Scaffold(
    appBar: AppBar(backgroundColor: Colors.transparent,title: Text('Update the product',style: TextStyle(color: Colors.black),),centerTitle: true,),
    
      
      
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 25),
        child: SingleChildScrollView(
          child: Column(children: [TextFormfieldwidget(hinttext: 'Product Name ${product.title} ', icon: Icon(Icons.border_color_outlined), obscureValue: false,enablebordercolor: Colors.black,onchanged: (data) {
            Prod_name=data;
          },textInputType: TextInputType.text),
    
          SizedBox(height: 12,),
    
    
    
          TextFormfieldwidget(hinttext: 'Price -- ${product.price}', icon: Icon(Icons.border_color_outlined), obscureValue: false,enablebordercolor: Colors.black,onchanged: (data) {
            price=data;
          },textInputType: TextInputType.number),
    
          SizedBox(height: 12,),
    
          TextFormfieldwidget(hinttext: ' Description -- ${product.description}', icon:Icon(Icons.border_color_outlined), obscureValue: false,enablebordercolor: Colors.black,onchanged: (data) {
            Description=data;
          },textInputType:TextInputType.text),
    
          SizedBox(height: 12,),
    
          TextFormfieldwidget(hinttext: 'Image', icon: Icon(Icons.border_color_outlined), obscureValue: false,enablebordercolor: Colors.black,onchanged: (data) {
            Image=data;
          },textInputType: TextInputType.text),
           
           SizedBox(height: 25,),
    
    
           ElevatedButton(
            
              style: ElevatedButton.styleFrom(foregroundColor: Colors.amber,
                  backgroundColor: Colors.amber,
                  fixedSize: Size(300, 50),
                  alignment: Alignment.center),
              onPressed: () async {
                inAsyncCall=true;
                setState(() {
                  
                });
               
                try{
                   await UpdateProductRepoImpl(api()).update_product(id: product.id,
                title: Title==null?product.title:Title!,
                 price: price==null?product.price.toString():price!,
                  description: Description==null?product.description:Description!
                  , image: Image==null?product.Image:Image!,
                   category: product.category);
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('The product has been updated successfully')));
                }
                catch(e){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Review your update operation please')));
                }
              
               inAsyncCall=false;
               setState(() {
                 
               });
              },
              child:
                  Text('Update', style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold)))]),
        ),
      )),
    );
  }
}

  

