import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_collection/app.widget.dart';
import 'package:app_collection/module/home/home.route.dart';

class AppModule extends MainModule {

  // Provide a list of dependencies to inject into your project
  @override
  List<Bind> get binds => [];

  // Provide all the routes for your module
  @override
  List<Router> get routers => [
    Router('/', module: HomeModule()),
  ];

  // Provide the root widget associated with your module
  @override
  Widget get bootstrap => AppWidget();
}