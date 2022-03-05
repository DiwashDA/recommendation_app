import 'package:flutter/material.dart';

abstract class NavigationService {
  bool get canGoBack;

  GlobalKey<NavigatorState> get navigationKey;

  void pop({dynamic result});

  // void showScreenSaver();

  Future<dynamic> navigateTo(String routeName, {dynamic arguments});

  Future<dynamic> navigateToAndPop(String routeName, {dynamic arguments});

  Future<dynamic> navigateToAndClearStack(String routeName,
      {dynamic arguments});
}
