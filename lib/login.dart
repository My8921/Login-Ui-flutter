
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return S1();

  }
}

class S1 extends State<login>{
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/login.png"),
          fit: BoxFit.cover

        )


      ),
child: Scaffold(
backgroundColor: Colors.transparent,
  body: Stack(
    children: [
      Container(
        padding: EdgeInsets.only(left: 35,top: 130),
        child: Text("Welcome\nBack",style: TextStyle(color: Colors.white,fontSize: 33),),
      ),
      Container(
        padding: EdgeInsets.only(

          top: MediaQuery.of(context).size.height*0.5,
          right: 35,
          left: 35,

        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                  filled: true,
                  fillColor: Colors.grey.shade50,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
              SizedBox(height: 30),
              TextField(
                obscureText: true,

                decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.grey.shade50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sign in",style: TextStyle(fontSize: 27,fontWeight:FontWeight.w700,color: Color(0xff4c505b)),),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor:Color(0xff4c505b),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: (){},
                      icon: Icon(Icons.arrow_forward),

                    ),
                  )
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, 'register');
                  }, child:
                  Text(
                    "Sign Up",style: TextStyle(
                      decoration: TextDecoration.underline,fontSize: 18,color: Color(0xff4c505b)),)),
        Text(
          "Forget Password",style: TextStyle(
            decoration: TextDecoration.underline,fontSize: 18,color: Color(0xff4c505b)),)
                ],
              )

            ],
          ),
        ),
      )
    ],
  ),

),
    );


  }



}