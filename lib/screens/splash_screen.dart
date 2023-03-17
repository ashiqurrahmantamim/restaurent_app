import 'package:flutter/material.dart';
import 'package:food_app/screens/screens.dart';
import 'package:food_app/shared/constants.dart';
import 'package:food_app/widgets/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        
    //first slide
        PageViewModel(
           titleWidget: TitleWidget(imageAsset: "assets/First_image.png",title: "Nearby restaurents",),
          body:
              "You don't have to go far to find a good restaurant, we have provided all the restaurants that is near you",
         
        ),
    //second slide
        PageViewModel(
          titleWidget: TitleWidget(
            imageAsset: "assets/Second_image.png",
            title: "Select the Favorites Menu",
          ),
          body:
              "Now eat well, don't leave the house, You can choose your favorite food only with onclick",
        ),
       
    //third slide
         PageViewModel(
          titleWidget: TitleWidget(
            imageAsset: "assets/Third_image.png",
            title: "Good food at a cheap price",
          ),
          body:
              "You can eat at expensive restaurants with affordable price",
        ),

       
      ],
       done: Icon(
        Icons.arrow_forward_outlined,
        color: Colors.green,
      ),
      onDone: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomeScreen()));
      },
      
       skip: Text("Skip",style: TextStyle(color: Colors.black,fontSize: 16),),
       showSkipButton: true,
       showNextButton: true,
       next:Icon(Icons.arrow_forward_outlined,color: Colors.green,),
    );
  }
}
