// ignore: file_names
import 'package:fitarekak_rider_app/constants.dart';
import 'package:fitarekak_rider_app/screens/EveryOpenSplash/Every_Open_SplashScreen.dart';
import 'package:fitarekak_rider_app/screens/Register/Register_screen.dart';
import 'package:fitarekak_rider_app/screens/SplashScreenRegister/components/PageBuilder.dart';
import 'package:fitarekak_rider_app/screens/SplashScreenRegister/components/splashContentModel.dart';
import 'package:fitarekak_rider_app/theme.dart';
import 'package:flutter/material.dart';

class SplashScreenRegister extends StatefulWidget {
  const SplashScreenRegister({Key? key}) : super(key: key);

  @override
  State<SplashScreenRegister> createState() => _SplashScreenRegisterState();
}

class _SplashScreenRegisterState extends State<SplashScreenRegister> {
  int currentIndex = 0;

  List<SplashContent> content = [
    SplashContent(
        "assets/images/01.png",
        "There are many variations of passages of Lorem Ipsum available. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary",
        "Prepard by exparts"),
    SplashContent(
        "assets/images/02.png",
        "There are many variations of passages of Lorem Ipsum available. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary",
        "Delivery to your home"),
    SplashContent(
        "assets/images/04.png",
        "There are many variations of passages of Lorem Ipsum available. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary",
        "Enjoy with everyone"),
  ];

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentIndex == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? theme().primaryColor
            : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Fi Tarekak",
          style: TextStyle(
            color: theme().primaryColor,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: content.length,
              itemBuilder: (context, index) {
                return PageBuilderWidget(
                    title: content[index].title,
                    description: content[index].description,
                    imgurl: content[index].image);
              }),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.44,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                content.length,
                (index) => buildDot(index: index),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Let's Go !"),
        onPressed: () {
          // Add your onPressed code here!
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegisterScreen()),
          );
        },
        backgroundColor: Colors.black,
        icon: const Icon(Icons.arrow_circle_right),
      ),
    );
  }
}
