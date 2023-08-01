import 'package:delivery_app/Screens/Homescreen/Filter%20Page/all_button.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/any_button.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/breakfast_button.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/brunch_button.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/burger_button.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/chinese_button.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/clear_all.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/dinner_button.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/dollar_button.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/gluten_free_button.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/pizza_button.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/salads_button.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/soups_button.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/vegan_button.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/vegetarian_button.dart';
import 'package:delivery_app/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  final Color _containerColor = const Color(0xFFEEA734);
  final bool _hasBeenTapped = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Filters",
          style:
              GoogleFonts.notoSans(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/tenth");
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SafeArea(
          child: Column(
        children: [
          ClearAll(rowIdentification: "CATEGORIES"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              AllButton(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: BrunchButton(),
              ),
              DinnerButton()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              BurgerButton(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ChineseButton(),
              ),
              PizzaButton()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SaladaButton(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SoupsButton(),
              ),
              BreakfastButton()
            ],
          ),
          ClearAll(rowIdentification: "DIETARY"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              AnyButton(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: VegetarianButton(),
              ),
              VeganButton()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              GlutenFreeButton(),
            ],
          ),
          ClearAll(rowIdentification: "PRICE RANGE"),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DollarButton(
                        dollarSign: "\$",
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DollarButton(
                          dollarSign: "\$\$",
                        ),
                      ),
                      DollarButton(
                        dollarSign: "\$\$\$",
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DollarButton(
                          dollarSign: "\$\$\$",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DollarButton(
                          dollarSign: "\$\$\$",
                        ),
                      )
                    ],
                  ),
                ],
              )),
          const Padding(
            padding: EdgeInsets.only(top: 60),
            child: Buttons(
                buttonName: "APPLY FILTERS",
                width: 0.8,
                height: 0.06,
                route: ''),
          )
        ],
      )),
    );
  }
}
