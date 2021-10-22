import 'package:floorplan/homepage.dart';
import 'package:floorplan/routes/routenames.dart';
import 'package:floorplan/searchpage.dart';
import 'package:floorplan/signin.dart';
import 'package:floorplan/signup.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case signUpRoute:
        return MaterialPageRoute(
          builder: (_) => SignUpPage(),
        );
      case signInRoute:
        return MaterialPageRoute(
          builder: (_) => SignInPage(),
        );
      case homePageRoute:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case searchRoute:
        return MaterialPageRoute(
          builder: (_) => SearchPage(),
        );

      // case '/list':
      //   if (args is String) {
      //     return MaterialPageRoute(
      //       builder: (_) => ListPage(
      //         listNumber: args,
      //       ),
      //     );
      //   }
      //   return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error Loading Page'),
        ),
        body: Center(
          child: Container(
            color: Colors.white,
            child: const Text('Error Loading Page'),
          ),
        ),
      );
    });
  }
}
