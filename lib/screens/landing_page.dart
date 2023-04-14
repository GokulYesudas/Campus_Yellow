import 'package:campus_yellow/components/button.dart';
import 'package:campus_yellow/components/search_bar.dart';
import 'package:campus_yellow/components/text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 60,),


              // Two text (Campus Yellow and practice. learn. compete)
              CustomTextWidget(text: "Camp Yellow",fontSize: 30,),
              SizedBox(height: 5,),
              CustomTextWidget(text: "practice. learn. compete.",fontSize: 14,),

              SizedBox(height: 30,),
              

              // An image from Google
              Padding(
                padding: EdgeInsets.all(25.0),
                  child: Image(image: AssetImage('assets/bird.jpg'))),
              SizedBox(height: 20,),

              // SearchBar
              Padding(
                  padding: EdgeInsets.all(20),
                  child: SearchBar(onSearchPressed: (){},hintText: 'Search events by area ')),
              SizedBox(height: 40,),

              // LoginButton
              CustomButton(buttonText: 'LOGIN', buttonColor: Colors.black)
            ],
          ),
        ),
      ),
    );
  }
}
