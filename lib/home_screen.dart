import 'dart:ui';
import 'package:flutter/material.dart';
import 'product_card.dart';
import 'section_title.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:SingleChildScrollView (
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset("assets/images/Group (1).png",
                  width:30,
                  height:30,
                  ),
                ),
                SizedBox(height:10),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Icon(Icons.fmd_good),
                    Text("Dhaka, Banassre",
                    style:TextStyle(
                      fontWeight:FontWeight(600),
                      fontSize:16,
                      color:Color(0xff4C4F4D),
                    ),
                    ),
                  ],
                ),
                SizedBox(height:20),
              TextFormField(
                decoration:InputDecoration(
                  
                  prefixIcon:Icon(Icons.search,
                  color:Color(0xff181B19),
                  ),
                  fillColor:Color(0xffF2F3F2),
                  filled:true,
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide.none,
                    borderRadius:BorderRadius.circular(15),
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide:BorderSide.none,
                    borderRadius:BorderRadius.circular(15),
                
                  ),
                hintText:"Search Store",hintStyle:TextStyle(
                  fontWeight:FontWeight(600),
                  fontSize:14,
                  color:Color(0xff7C7C7C),
                ),
                
                ),
                ),
                SizedBox(height:10),
            
                  Container(
                  width: double.infinity, 
                  height:115,          
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), 
                  image: const DecorationImage(
                  image: AssetImage('assets/banner.png'), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
                 SizedBox(height:5),
          SectionTitle(
          title: "Exclusive Offer",
          actionText: "See all",
          ),
              SizedBox(height:5),
  Row(
  children: [
    Expanded(
      child: ProductCard(
        title: "Red Apple",
        price: "4.99",
        imagePath: "assets/images/pngfuel 1.png",
      ),
    ),
    const SizedBox(width: 12), 
    Expanded(
      child: ProductCard(
        title: "Organic Banana",
        price: "2.99",
        imagePath: "assets/images/banana.png", 
      ),
    ),
  ],
),     
   SectionTitle(
  title: "Best Selling",
  actionText: "See all", 
),  
                      ],
                    ),
                  ),
              ), 
            ),
          );
  }
}