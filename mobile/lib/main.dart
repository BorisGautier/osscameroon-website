import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mobile/simpleBlocObserver.dart';
import 'package:mobile/src/app.dart';
import 'package:path_provider/path_provider.dart';
import 'package:mobile/src/di/di.dart' as di;

void main() async {
  //initialize widgets
  WidgetsFlutterBinding.ensureInitialized();
  //initialize storage Block
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  Bloc.observer = SimpleBlocObserver();

//Initialization of all dependencies
  await di.init();

  //Launching the application
  runApp(const MyApp());
}
