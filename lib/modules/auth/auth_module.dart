import 'package:flutter_modular/flutter_modular.dart';
import 'package:news_app/modules/auth/data/datasource/auth_datasource.dart';
import 'package:news_app/modules/auth/data/repositories/auth_repository_impl.dart';
import 'package:news_app/modules/auth/domain/usecases/register.dart';

import 'presenter/auth.page.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => AuthDatasourceNews()),
    Bind((i) => AuthRepositoryImpl(i.get())),
    Bind((i) => RegisterImpl(i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const AuthPage()),
  ];
}
