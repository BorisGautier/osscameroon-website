// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mobile/src/blocs/spash/splash_bloc.dart';
import 'package:mobile/src/utils/colors.dart';
import 'package:mobile/src/utils/styles.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  SplashBloc? _splashBloc;

  @override
  void initState() {
    super.initState();
    _splashBloc = BlocProvider.of<SplashBloc>(context);
    _splashBloc!.add(NavigateToHomeScreenEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
