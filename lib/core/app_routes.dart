import 'package:auto_route/auto_route.dart';
import 'package:note_app/core/app_routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(
          page: FormRoute.page,
        ),
      ];
}
