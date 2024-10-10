import 'package:flutter/material.dart';
import 'package:ma3ak_app/features/auth/views/login_view.dart';
import 'package:ma3ak_app/features/auth/views/register_view.dart';
import 'package:ma3ak_app/features/home/views/any_specific_category_view.dart';
import 'package:ma3ak_app/features/navigation_menu_view.dart';
import 'package:ma3ak_app/features/splash/views/splash_view.dart';
import 'package:ma3ak_app/routing/routes_name.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case RoutesName.loginRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case RoutesName.registerRoute:
        return MaterialPageRoute(
          builder: (_) => const RegisterView(),
        );
    // case RoutesName.profileRoute:
    //   return MaterialPageRoute(
    //     builder: (_) => const ProfileView(),
    //   );
      case RoutesName.navigationMenuRoute:
        return MaterialPageRoute(
          builder: (_) => const NavigationMenuView(),
        );
      case RoutesName.anySpecificCategoryRoute:
        final Map<String, dynamic> map = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => AnySpecificCategoryView(map: map),
        );
      default:
        return unDefinedRoute();
    }
  }

  /// Un Defined Route
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: const Center(
          child: Text('Page not found!'),
        ),
      ),
    );
  }
}
