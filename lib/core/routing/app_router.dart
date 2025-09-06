import 'package:flutter/material.dart';
import 'package:ui_ux_design_app/core/routing/routes.dart';

import '../../ui/screens/gallery_screen.dart';
import '../../ui/screens/home_screen.dart';
import '../../ui/screens/info_screen.dart';
import '../../ui/screens/main_screen.dart';
class AppRouter {

  Route? generateRoute(RouteSettings settings)
  {
    switch (settings.name)
    {
      case Routes.mainScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => MainScreen());

      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen());

      case Routes.newsScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => InfoScreen(),

        );

      case Routes.galleryScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => GalleryScreen());

        default:
          return null;

    }
  }
}