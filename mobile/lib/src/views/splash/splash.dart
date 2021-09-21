import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/src/app.dart';
import 'package:mobile/src/blocs/spash/splash_bloc.dart';
import 'package:mobile/src/utils/colors.dart';
import 'package:mobile/src/utils/extension.dart';
import 'package:mobile/src/views/splash/spashWidget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    changeStatusColor(transparent);
    return Scaffold(
      backgroundColor: whiteColor,
      body: BlocProvider(
        create: (context) => SplashBloc(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: BlocBuilder<SplashBloc, SplashState>(
              builder: (context, state) {
                if ((state is SplashInitial) || (state is SplashLoading)) {
                  return const SplashWidget();
                } else if (state is SplashLoaded) {
                  return const MyHomePage(title: "Home");
                }
                return Container();
              },
            ),
          ),
        ),
      ),
    );
  }
}
