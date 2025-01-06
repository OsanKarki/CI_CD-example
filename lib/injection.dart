import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:note_app/injection.config.dart';

import 'core/hive_service.dart';
import 'core/network_info.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() {
  getIt.init(); // Initialize other injected services

  getIt.registerLazySingleton(() => HiveService());
  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
        connectionChecker: InternetConnectionChecker.createInstance()),
  );
}
