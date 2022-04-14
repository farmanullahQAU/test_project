import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo1/components/authbutton.dart';
import 'package:flutter_demo1/styles/app_styles.dart';

void main(){

  runApp(TextApp());



}

class TextApp extends StatefulWidget {
  TextApp({Key? key}) : super(key: key);

  @override
  State<TextApp> createState() => _nameState();
}

class _nameState extends State<TextApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(


      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("Login"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              buildLogo(context),
              MyField(hnt: "enter email",lbl: "email",),
              const SizedBox(height: 10,),
              MyField(hnt: "enter password",lbl: "password",isSecure: true,),

   Padding(
        padding: const EdgeInsets.only(bottom: 10,top: 20),
        child: SizedBox(
          height: 40,
          child: MyButton(title: "login", onTap: (){
        
            print("login clicked");
          }, width: 150),
        ),
      ),
          Text("forgot password"),
      const SizedBox(height: 10,),
         Padding(
        padding: const EdgeInsets.all(8.0),
        child: addRichText(context),
      )

      
          
          
              
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLogo(BuildContext context){


    return Column(children: [
    
      Image.asset("images/logo.png",width: 100,),
      const SizedBox(height: 10,),
    
      Text("LOGIN",style:AppTextStyles.login1.copyWith(fontWeight: FontWeight.bold),),
    
      const SizedBox(height: 10,),
    
    Text("Come back with your id",style: AppTextStyles.login2,),
      const SizedBox(height: 10,),
    
    Text("welcome back",style: AppTextStyles.login2.copyWith(fontSize: 15)),
      const SizedBox(height: 10,),
   

   



    
    
    ],);
  }

  Widget addRichText(BuildContext context){
return RichText(
  text: TextSpan(
    text: 'Not a member? ',
    style: AppTextStyles.login2.copyWith(color: Colors.black),
    children:  <TextSpan>[
      TextSpan(text: ' signup!',style: AppTextStyles.login2.copyWith(color: Colors.blue)),
    ],
  ),
);

  }
}

class MyField extends StatelessWidget {
  String hnt;
  String lbl;
  bool isSecure;
   MyField({Key? key,required this.hnt,required this.lbl,this.isSecure=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     SizedBox(
      width: MediaQuery.of(context).size.width*0.5,
      child: TextFormField(
          
          decoration: InputDecoration(
            
    
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          
            hintText: hnt,
            labelText: lbl
          ),
obscureText:isSecure
          
          
                ),
    );
  }
}