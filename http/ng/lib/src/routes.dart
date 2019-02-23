import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'dashboard_component.template.dart' as dashboard_template;
import 'detail_list_component.template.dart' as detaillist_template;

export 'route_paths.dart';

class Routes {
  static final dashboard = RouteDefinition(
    routePath: RoutePaths.dashboard,
    component: dashboard_template.DashboardComponentNgFactory,
  );
  static final tournaments = RouteDefinition(
    routePath: RoutePaths.tournaments,
    component: detaillist_template.DetailListComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    dashboard,
    tournaments,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.dashboard.toUrl(),
    ),
  ];
}
