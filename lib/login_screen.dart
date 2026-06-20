import 'package:flutter/material.dart';
import 'package:grosry/home_screen.dart';
import 'registere_screen.dart';
class LoginScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:28),
            Center(
              child: Image.asset(
              "assets/images/Group (1).png",
               width:47,
               height:40,
               ),
            ),
             SizedBox(height: 80),
            Text(
            "Loging",
            style: TextStyle(
              fontSize:22,
              fontWeight: FontWeight(600),
              color: Color(0xff181725), 
            ),
            ),
            SizedBox(height:10),
            Text("Enter your email and password",
            style: TextStyle(
              fontSize:12,
              color: Color(0xff7C7C7C),
              ),
            ),
            SizedBox(height:30),
            Text("Email"),
            TextFormField(),
            SizedBox(height:25),
            Text("Password"),
            TextFormField(
              obscureText:true,
              decoration: InputDecoration(
                suffix:Icon(Icons.visibility),
              ),
            ),
            SizedBox(height:20),
            Align(
              alignment:Alignment.bottomRight,
              child: Text(
              "Forgot Password?",
              style:TextStyle(
              fontSize:14,
              fontWeight:FontWeight(400),
              color: Color(0xff181725),
              ),
              ),
            ),
            SizedBox(height:20),
            InkWell(
              onTap:(){
                Navigator.push(context, 
                MaterialPageRoute(builder:( (context)=>RegistereScreen()))
                );
              },
              child: Container(
                width: double.infinity,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xff53B175),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize:18,
                  color:Color(0xffFFF9FF),
                ),
                ),
              ),
            ),
            SizedBox(height:20),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text("Don’t have an account? ",
                style:TextStyle(
                  fontWeight:FontWeight(600),
                  fontSize:14,
                ),
                ),
                Text("Singup",
                style:TextStyle(
                  fontWeight:FontWeight(600),
                  fontSize:14,
                  color:Color(0xff53B175),
                ),
                ),
              ],
            ),
                ],

              ),
      ),
          ),
        
      );
    
   
  }
}