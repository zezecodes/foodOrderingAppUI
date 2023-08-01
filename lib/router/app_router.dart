import 'package:delivery_app/Screens/Account_Settings/account_settings.dart';
import 'package:delivery_app/Screens/Account_Settings/add_payment_method.dart';
import 'package:delivery_app/Screens/Account_Settings/change_password.dart';
import 'package:delivery_app/Screens/Account_Settings/credit_cards.dart';
import 'package:delivery_app/Screens/Homescreen/Featured%20Partners%20Page/featured_partners_page.dart';
import 'package:delivery_app/Screens/Homescreen/Filter%20Page/filter_page.dart';
import 'package:delivery_app/Screens/Sign_In_Screen/find_restaurants.dart';
import 'package:delivery_app/Screens/Forgot%20Password/forgot_password.dart';
import 'package:delivery_app/Screens/Account_Settings/locations.dart';
import 'package:delivery_app/Screens/Sign_Up%20Screen/login.dart';
import 'package:delivery_app/Screens/Start%20Screens/onboarding_page.dart';
import 'package:delivery_app/Screens/Sign_Up%20Screen/otp.dart';
import 'package:delivery_app/Screens/Account_Settings/payment_methods.dart';
import 'package:delivery_app/Screens/Account_Settings/profile_information.dart';
import 'package:delivery_app/Screens/Account_Settings/refer_friends.dart';
import 'package:delivery_app/Screens/Forgot%20Password/reset_email.dart';
import 'package:delivery_app/Screens/Sign_In_Screen/sign_in_page.dart';
import 'package:delivery_app/Screens/Sign_Up%20Screen/sign_up.dart';
import 'package:delivery_app/Screens/Account_Settings/social_accounts.dart';
import 'package:delivery_app/Screens/Start%20Screens/walkthrough_page.dart';
import 'package:delivery_app/components/bottom_navigation.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const OnboardingPage());
      case "/second":
        return MaterialPageRoute(builder: (_) => const WalkthroughPage());
      case "/third":
        return MaterialPageRoute(builder: (_) => const SignInPage());
      case "/fourth":
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case "/fifth":
        return MaterialPageRoute(builder: (_) => const ResetEmail());
      case "/sixth":
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case "/seventh":
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case "/eighth":
        return MaterialPageRoute(builder: (_) => const OTPPage());
      case "/ninth":
        return MaterialPageRoute(builder: (_) => const FindRestaurants());
      case "/tenth":
        return MaterialPageRoute(builder: (_) => const BottomNavigation());
      case "/eleventh":
        return MaterialPageRoute(builder: (_) => const BottomNavigation());
      case "/twelth":
        return MaterialPageRoute(builder: (_) => const FeaturedPartners());
      case "/thirteenth":
        return MaterialPageRoute(builder: (_) => const FilterPage());
      case "/fourteenth":
        return MaterialPageRoute(builder: (_) => const AccountSettings());
      case "/fifteenth":
        return MaterialPageRoute(builder: (_) => const ProfileInformation());
      case "/sixteenth":
        return MaterialPageRoute(builder: (_) => const ChangePassword());
      case "/seventeenth":
        return MaterialPageRoute(builder: (_) => const PaymentMethods());
      case "/eighteenth":
        return MaterialPageRoute(builder: (_) => const CreditCards());
      case "/nineteenth":
        return MaterialPageRoute(builder: (_) => const LocationsPage());
      case "/twentieth":
        return MaterialPageRoute(builder: (_) => const SocialAccounts());
      case "/twentyfirst":
        return MaterialPageRoute(builder: (_) => const ReferFriends());
      case "/twentysecond":
        return MaterialPageRoute(builder: (_) => const AddPayment());
    }
    return null;
  }
}
