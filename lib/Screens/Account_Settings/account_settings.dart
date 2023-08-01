import 'package:delivery_app/components/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 120, top: 8, bottom: 8),
              child: Text(
                "Account Settings",
                style: GoogleFonts.notoSans(
                    fontSize: 28, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: SizedBox(
                width: 350,
                height: 70,
                child: Text(
                  "Update your settings like notifications, payments, profile edit etc.",
                  style: GoogleFonts.notoSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF868686)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: Text(
                            "Profile Information",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          "Change your account information",
                          style: GoogleFonts.notoSans(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      splashRadius: 1,
                      padding: const EdgeInsets.only(left: 70),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/fifteenth");
                      },
                      icon: const Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Text(
                            "Change Password",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          "Change your password",
                          style: GoogleFonts.notoSans(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      splashRadius: 1,
                      padding: const EdgeInsets.only(left: 140),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/sixteenth");
                      },
                      icon: const Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.credit_card_rounded,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 55),
                          child: Text(
                            "Payment Methods",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          "Add your credit & debit cards",
                          style: GoogleFonts.notoSans(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      splashRadius: 1,
                      padding: const EdgeInsets.only(left: 100),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/seventeenth");
                      },
                      icon: const Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 180),
                          child: Text(
                            "Locations",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          "Add or remove your delivery locations",
                          style: GoogleFonts.notoSans(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      splashRadius: 1,
                      padding: const EdgeInsets.only(left: 40),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/nineteenth");
                      },
                      icon: const Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.facebook_rounded,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text(
                            "Add Social Account",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          "Add Facebook, Twitter etc ",
                          style: GoogleFonts.notoSans(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      splashRadius: 1,
                      padding: const EdgeInsets.only(left: 120),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/twentieth");
                      },
                      icon: const Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.ios_share_rounded,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 65),
                          child: Text(
                            "Refer To Friends",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          "Get \$10 for reffering friends",
                          style: GoogleFonts.notoSans(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    splashRadius: 1,
                    padding: const EdgeInsets.only(left: 110),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/twentyfirst");
                    },
                    icon: const Icon(Icons.arrow_forward_ios_rounded),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "NOTIFICATIONS",
                      style: GoogleFonts.notoSans(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text(
                            "Push Notifications",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          "For daily update you will get it",
                          style: GoogleFonts.notoSans(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 65),
                    child: CupertinoSwitch(value: false, onChanged: (value) {}),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 65),
                          child: Text(
                            "SMS Notifications",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          "For daily update you will get it",
                          style: GoogleFonts.notoSans(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 65),
                    child: CupertinoSwitch(value: false, onChanged: (value) {}),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            "Promotional Notifications",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          "For daily update you will get it",
                          style: GoogleFonts.notoSans(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 65),
                    child: CupertinoSwitch(value: false, onChanged: (value) {}),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "MORE",
                          style: GoogleFonts.notoSans(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 28),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 130),
                          child: Text(
                            "Rate Us",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          "Rate us playstore, appstore",
                          style: GoogleFonts.notoSans(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      splashRadius: 1,
                      padding: const EdgeInsets.only(left: 110),
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 28),
              child: Row(
                children: [
                  Icon(
                    Icons.library_books,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 150),
                          child: Text(
                            "FAQ",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          "Frequently asked questions",
                          style: GoogleFonts.notoSans(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    splashRadius: 1,
                    padding: const EdgeInsets.only(left: 110),
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_rounded),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 28),
              child: Row(
                children: [
                  Icon(
                    Icons.logout_rounded,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 65),
                          child: Text(
                            "Logout",
                            style: GoogleFonts.notoSans(
                                fontSize: 16, fontWeight: FontWeight.w300),
                          ),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    splashRadius: 1,
                    padding: const EdgeInsets.only(left: 175),
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_rounded),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
