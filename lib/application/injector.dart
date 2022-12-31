import 'package:finance_app/application/consumer/firebase_consumer.dart';
import 'package:finance_app/application/database/sql_database.dart';
import 'package:finance_app/application/repositories/user_repository_impl.dart';
import 'package:finance_app/application/services/user_service_impl.dart';
import 'package:finance_app/core/abstracts/database.dart';
import 'package:finance_app/core/abstracts/server.dart';
import 'package:finance_app/core/repositories/user_repository.dart';
import 'package:finance_app/core/services/user_services.dart';
import 'package:get_it/get_it.dart';

abstract class Injector {
  Future<void> init();
}

final locator = GetIt.instance;

class DevInjector extends Injector {
  DevInjector._();

  static DevInjector instance = DevInjector._();

  @override
  Future<void> init() async {
    final LocalDatabase database = SQLDatabase();
    final Server server = FirebaseConsumer();

    await Future.wait([
      database.init(),
      server.init(),
    ]);

    final UserRepository userRepository = UserRepositoryImpl(
      database,
    );

    final UserService userService = UserServiceImpl(server, userRepository);

    locator.registerSingleton<LocalDatabase>(database);
    locator.registerSingleton<Server>(server);

    locator.registerSingleton<UserRepository>(userRepository);
    locator.registerSingleton<UserService>(userService);
  }
}

class ProdInjector extends Injector {
  ProdInjector._();

  static ProdInjector instance = ProdInjector._();

  @override
  Future<void> init() async {}
}
