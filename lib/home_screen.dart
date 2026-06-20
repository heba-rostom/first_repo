import 'dart:ui';

import 'package:flutter/material.dart';

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
                 SizedBox(height:10),
                  Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Text("Exclusive Offer",style: TextStyle(
                fontWeight:FontWeight(600),
                fontSize:20,
                color:Color(0xff181725),
              )),
              Text("See all",
              style: TextStyle(
                fontWeight:FontWeight(600),
                fontSize:16,
                color:Color(0xff53B175),
              )),
            ],
                  ),
              SizedBox(height:15),
              Row(
                children: [
                  Container(
                    width:150,
                    height:210,
                    padding:EdgeInsets.all(16),
                    decoration:BoxDecoration(
                      border:Border.all(
                        color:Color(0xffE2E2E2),
                      ),
                      borderRadius:BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/pngfuel 1.png"),
                        SizedBox(height:15),
                        Text('Red Apple',style:TextStyle(
                          fontWeight:FontWeight(400),
                          fontSize:16,
                          color:Color(0xff181725),
                        ),),
                        Text("1kg, Priceg", style:TextStyle(
                          fontWeight:FontWeight(400),
                          fontSize:14,
                          color:Color(0xff7C7C7C),
                        ),),
                     
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$4.99",style:TextStyle(
                            fontWeight:FontWeight.w600,
                            fontSize:18,
                            color:Color(0xff181725),
                          )),
                            
                        Container(
                          padding:EdgeInsets.all(14),
                          child:Icon(Icons.add,color:Color(0xffFFFFFF)),
                          decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(17),
                            color:Color(0xff53B175),
                          ),
                        ),
                        

                      
                        ],
                      ),
                    
                        
                      ],
                    ),
                  ),
                ],
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}