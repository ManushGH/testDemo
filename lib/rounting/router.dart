import 'package:ecommerce_admin_tut/main.dart';
import 'package:ecommerce_admin_tut/pages/classLists/classLists_page.dart';
import 'package:ecommerce_admin_tut/pages/payments/payments_page.dart';
import 'package:ecommerce_admin_tut/pages/jobs/jobs_page.dart';
import 'package:ecommerce_admin_tut/pages/login/login.dart';
import 'package:ecommerce_admin_tut/pages/registration/registration.dart';
import 'package:ecommerce_admin_tut/widgets/layout/layout.dart';

import '../pages/home/home_page.dart';
import '../pages/events/events_page.dart';
import '../pages/activities/activities_page.dart';
import '../pages/users/users_page.dart';
import 'package:ecommerce_admin_tut/rounting/route_names.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomePage());
    case UsersRoute:
      return _getPageRoute(UsersPage());
    case ActivitiesRoute:
      return _getPageRoute(ActivitiesPage());
    case EventsRoute:
      return _getPageRoute(EventsPage());
    case LoginRoute:
      return _getPageRoute(LoginPage());
    case RegistrationRoute:
      return _getPageRoute(RegistrationPage());
    case LayoutRoute:
      return _getPageRoute(LayoutTemplate());
    case JobsRoute:
      return _getPageRoute(JobsPage());
    case ClassListsRoute:
      return _getPageRoute(ClassListsPage());
    case PaymentsRoute:
      return _getPageRoute(PaymentsPage());
    case PageControllerRoute:
      return _getPageRoute(AppPagesController());
    default:
      return _getPageRoute(LoginPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}
