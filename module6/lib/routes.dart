import 'package:flutter/material.dart';
import 'package:module6/screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case '/':
        return MaterialPageRoute(builder: (context) => MyHomePage());
      case '/about':
        return MaterialPageRoute(builder: (context) => AboutPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(title: Text("PageError")),
        body: Center(child: Text('ErrorPage')),
      );
    });
  }

}