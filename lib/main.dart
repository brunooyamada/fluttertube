import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:fluttertube/api.dart';
import 'package:fluttertube/blocs/videos_bloc.dart';
import 'package:fluttertube/screens/home.dart';

void main() {
  Api api = Api();
  api.search("eletro");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [Bloc((i) => VideosBloc(api: Api(), videos: []))],
      dependencies: [Dependency((i) => Api())],
      child: MaterialApp(
        title: 'Fluttertube',
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
