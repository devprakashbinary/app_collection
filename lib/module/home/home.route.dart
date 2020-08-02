import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_collection/module/home/home.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => Home()),
  ];

  static Inject get to => Inject<HomeModule>.of();
}