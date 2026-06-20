import 'package:flutter/material.dart';
import 'home_screen.dart';

class RegistereScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:const EdgeInsets.symmetric(horizontal:25),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset("assets/images/Group (1).png",
                width:47,
                height:40,
                ),
              ),
              SizedBox(height:60),
              Text("Sign Up",
              style: TextStyle(
                fontSize:26,
                fontWeight:FontWeight(600),
                color:Color(0xff030303),
              ),
              ),
              SizedBox(height:4),
              Text("Enter your credentials to continue",
              style:TextStyle(
                fontWeight:FontWeight(400),
                fontSize:16,
                color:Color(0xff7C7C7C),
              ),
              ),
              SizedBox(height:20),
              Text("Username"),
              TextFormField(),
              SizedBox(height:20),
              Text("Email"),
              TextFormField(),
              SizedBox(height:20),
              Text("Password"),
              TextFormField(
                obscureText:true,
                decoration:InputDecoration(
                suffix:Icon(Icons.visibility),
                ),
              ),
              SizedBox(height:10),
            RichText(
          textAlign: TextAlign.start, 
          text: TextSpan(
         style: const TextStyle(
         fontSize: 10,
         fontWeight: FontWeight(400),
         color: Color(0xff7C7C7C),
    ),
    children: [
      const TextSpan(
        text: "By continuing you agree to our ",
      ),
      TextSpan(
        text: "Terms of Service",
        style: const TextStyle(
          color: Color(0xff53B175),
          fontWeight: FontWeight(600),  
        ),
      ),
      const TextSpan(
        text: " and ",
      ),
      TextSpan(
        text: "Privacy Policy.",
        style: const TextStyle(
          color: Color(0xff53B175),
          fontWeight: FontWeight(600),
        ),
      ),
    ],
  ),
),
  SizedBox(height:20),
      InkWell(
        onTap: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context)=>HomeScreen()),
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
                "Sing Up",
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
        Text("Already have an account? ",
                style:TextStyle(
                  fontWeight:FontWeight(600),
                  fontSize:12,
                ),
                ),
                Text("Singup",
                style:TextStyle(
                  fontWeight:FontWeight(600),
                  fontSize:12,
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