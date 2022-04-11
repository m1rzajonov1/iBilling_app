import 'package:flutter/material.dart';
import 'package:imkon_exam/screens/contacts_page.dart';
import 'package:imkon_exam/screens/filter_page.dart';
import 'package:imkon_exam/screens/history_page.dart';
import 'package:imkon_exam/screens/search_page.dart';

class RouterGenerator {
  static generalRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => ContractsPage(),
        );
      case '/search':
        return MaterialPageRoute(
          builder: (context) => SearchPage(),
        );
      case '/filter':
        return MaterialPageRoute(
          builder: (context) => FilterPage(),
        );
      case '/history':
        return MaterialPageRoute(
          builder: (context) => HistoryPage(),
        );
    }
  }
}
