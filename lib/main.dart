import 'package:delivery_app/Screens/Homescreen/Add%20To%20Order%20Page/add_to_order.dart';
import 'package:delivery_app/Screens/Homescreen/Featured%20Partners%20Page/featured_partners_page.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/filter_page.dart';
import 'package:delivery_app/Screens/Homescreen/Homepage/homepage.dart';
import 'package:delivery_app/Screens/Homescreen/Restaurant%20Page/restaurant_page.dart';
import 'package:delivery_app/Screens/Order%20Pages/orders.dart';
import 'package:delivery_app/Screens/search_top_categories.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/router/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppRouter appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: OrdersPage(),
        initialRoute: "/",
        onGenerateRoute: appRouter.onGenerateRoute);
  }
}
