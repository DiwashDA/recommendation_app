import 'package:get_it/get_it.dart';

import '../base/base-view_model.dart';
import '../services/datastore_services.dart';
import '../services/dialog_service.dart';
import '../services/http_services.dart';
import '../services/implementation/navigation_service_implementation.dart';
import '../services/navigation_service.dart';
import '../ui/login/login_view_model.dart';

GetIt locator = GetIt.instance;

Future<void> setUpInjector() async {
  //Register services as lazy singleton and viewmodels as factory
  locator
      .registerLazySingleton<NavigationService>(() => NavigationServicesImpl());
  locator.registerLazySingleton(() => DialogService());
  // locator.registerLazySingleton<DataBaseService>(() => DataBaseServiceImpl());
  //
  locator.registerFactory(() => HttpService());
  locator.registerFactory(() => BaseViewModel());
  locator.registerFactory(() => DatastoreServices());
  locator.registerFactory(() => LogInViewModel());
  // locator.registerFactory(() => AmplifyServices());

  //
  // // here this service is made factory because we dont want it to run in backgroung.
}

class LoginViewModel {}
