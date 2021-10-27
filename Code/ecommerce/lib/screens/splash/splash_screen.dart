import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

import 'component/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/spllash";
  @override
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
