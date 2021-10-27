import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/sign_in/sigin_in.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

import '../component/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currenPage = 0;
  List<Map<String, String>> splasData = [
    {
      "text": "Wellcome to Tokoto, Let's shop!",
      "image": "assets/image/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/image/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \n Just stay at home with us",
      "image": "assets/image/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currenPage = value;
                  });
                },
                itemCount: splasData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splasData[index]["image"].toString(),
                  text: splasData[index]['text'].toString(),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splasData.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      Spacer(flex: 3),
                      DefaultButton(
                        text: "Continue",
                        press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currenPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currenPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
