import 'package:auto_route/auto_route.dart';

import '/features/album/presentation/pages/detail_screen.dart';
import '/features/album/presentation/pages/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    CustomRoute(
      path: "/",
      page: HomePageRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
      path: '/DetailScreen',
      page: DetailRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
  ];
}
