import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_collection/module/facebook/facebook.dart';

class FacebookModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => Facebook()),
  ];

  static Inject get to => Inject<FacebookModule>.of();
}