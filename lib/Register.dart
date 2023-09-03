import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/login.dart';

class Register extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return S2();

  }

}
class S2 extends State<Register>
{
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/register.png"),
              fit: BoxFit.cover

          )


      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35,top: 80),
              child: Text("Create\nAccount",style: TextStyle(color: Colors.white,fontSize: 33),),
            ),
            Container(
              padding: EdgeInsets.only(

                top: MediaQuery.of(context).size.height*0.26,
                right: 35,
                left: 35,

              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(color: Colors.black),

),
                          hintText: "Name",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white),

                          ),

                          hintStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(



                      decoration: InputDecoration(




    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.black),

    ),
    hintText: "Email",
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.white),

    ),

    hintStyle: TextStyle(color: Colors.white),











                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),),
                    SizedBox(height: 30,),
                    TextField(
                      obscureText: true,


                      decoration: InputDecoration(


                      focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.black),

    ),
    hintText: "Password",
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.white),

    ),

    hintStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      ),),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sign Up",style: TextStyle(fontSize: 27,fontWeight:FontWeight.w700,color: Color(0xff4c505b)),),
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
                          Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>login()));

                        }, child:
                        Text(
                          "Sign in",style: TextStyle(
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