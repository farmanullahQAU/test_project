import 'package:flutter/material.dart';
import 'package:flutter_demo1/styles/app_styles.dart';

class MyButton extends StatelessWidget {

 final  String title;
 final VoidCallback onTap;
 final double width;
   
  const MyButton({Key? key, required this.title,required this.onTap,required this.width}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(decoration: BoxDecoration(
        color: Colors.red,


borderRadius: BorderRadius.circular(50)

      ),

    
        width: width,
        child: Center(child: Text(title,style: AppTextStyles.login2.copyWith(color: Colors.white),)),
    
        
      ),
    );
  }
}