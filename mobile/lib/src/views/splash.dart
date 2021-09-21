import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mobile/src/utils/colors.dart';
import 'package:mobile/src/utils/extension.dart';
import 'package:mobile/src/utils/styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    changeStatusColor(transparent);
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.all(fixPadding),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/oss.ico',
                width: 200.0,
                fit: BoxFit.fitWidth,
              ),
              heightSpace,
              heightSpace,
              heightSpace,
              const SpinKitPulse(
                color: darkPrimaryColor,
                size: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
