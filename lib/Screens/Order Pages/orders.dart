import 'package:delivery_app/components/top_page.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          TopPage(
            route: '',
            title: "Your Orders",
          ),
          Row(
            children: [Column()],
          ),
          Row(),
          Row()
        ],
      )),
    );
  }
}
