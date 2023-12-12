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
