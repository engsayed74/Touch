import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:touch_app/features/addresses/presentation/views/add_new_address_view.dart';
import 'package:touch_app/features/addresses/presentation/views/addresses_view.dart';
import 'package:touch_app/features/auth/presentation/views/account_creation_view.dart';
import 'package:touch_app/features/auth/presentation/views/login_view.dart';
import 'package:touch_app/features/basket/presentation/views/basket_view.dart';
import 'package:touch_app/features/childern_closes/presentation/views/children_closes_view.dart';
import 'package:touch_app/features/closes_details/presentation/views/closes_details_view.dart';
import 'package:touch_app/features/closes_details/presentation/views/special_size.dart';
import 'package:touch_app/features/designer/presentation/views/designer_name_view.dart';
import 'package:touch_app/features/designer/presentation/views/following_order_view.dart';
import 'package:touch_app/features/following_order/presentation/views/confirm_order_view.dart';
import 'package:touch_app/features/home/presentation/views/curved_bottom_navigation_view.dart';
import 'package:touch_app/features/men_closes/presentation/views/men_closes_view.dart';
import 'package:touch_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:touch_app/features/payment/presentation/views/payment_view.dart';
import 'package:touch_app/features/private_order/presentation/views/private_order_details_view.dart';
import 'package:touch_app/features/private_order/presentation/views/private_order_view.dart';
import 'package:touch_app/features/setting/presentation/views/about_developer_view.dart';
import 'package:touch_app/features/setting/presentation/views/about_us_view.dart';
import 'package:touch_app/features/setting/presentation/views/common_question_view.dart';
import 'package:touch_app/features/setting/presentation/views/complains_view.dart';
import 'package:touch_app/features/setting/presentation/views/contact_us_view.dart';
import 'package:touch_app/features/setting/presentation/views/favourite_view.dart';
import 'package:touch_app/features/setting/presentation/views/privacy_policy_view.dart';
import 'package:touch_app/features/setting/presentation/views/setting_view.dart';
import 'package:touch_app/features/setting/presentation/views/setup_view.dart';
import 'package:touch_app/features/setting/presentation/views/terms_conditions_view.dart';
import 'package:touch_app/features/splash/presentation/views/splash_view.dart';
import 'package:touch_app/features/map/presentation/views/map_view.dart';
import 'package:touch_app/features/women_closes/presentation/views/womens_closes_view.dart';


Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case AccountCreationView.routeName:
      return MaterialPageRoute(
          builder: (context) => const AccountCreationView());
    case CurvedBottomNavigation.routeName:
      return MaterialPageRoute(
          builder: (context) => const CurvedBottomNavigation());
    case DesignerNameView.routeName:
      return MaterialPageRoute(builder: (context) => const DesignerNameView());
      case MapView.routeName:
      return MaterialPageRoute(builder: (context) => const MapView());
    case PrivateOrderView.routeName:
      return MaterialPageRoute(builder: (context) => const PrivateOrderView());
    case PrivateOrderDetailsView.routeName:
      return MaterialPageRoute(
          builder: (context) => const PrivateOrderDetailsView());

           case SettingView.routeName:
      return MaterialPageRoute(
          builder: (context) => const SettingView());

          case AboutUsView.routeName:
          return MaterialPageRoute(
            builder: (context) => const AboutUsView(),  
          );
          case CommonQuestionView.routeName:
          return MaterialPageRoute(
            builder: (context) => const CommonQuestionView(),  
          );
          case FavouriView.routeName:
          return MaterialPageRoute(
            builder: (context) => const FavouriView(),  
          );
          case ComplainsView.routeName:
          return MaterialPageRoute(
            builder: (context) => const ComplainsView(),  
          );

          case ContactUsView.routeName:
          return MaterialPageRoute(
            builder: (context) => const ContactUsView(),  
          );
           case PrivacyPolicyView.routeName:
          return MaterialPageRoute(
            builder: (context) => const PrivacyPolicyView(),  
          );
            case TermsConditionsView.routeName:
          return MaterialPageRoute(
            builder: (context) => const TermsConditionsView(),  
          );

           case AboutDeveloperView.routeName:
          return MaterialPageRoute(
            builder: (context) => const AboutDeveloperView(),  
          );

           case SetUpView.routeName:
          return MaterialPageRoute(
            builder: (context) => const SetUpView(),  
          );
            case MenClosesView.routeName:
          return MaterialPageRoute(
            builder: (context) => const MenClosesView(),  
          );
            case WomenClosesView.routeName:
          return MaterialPageRoute(
            builder: (context) => const WomenClosesView(),  
          );
           case ChildrenClosesView.routeName:
          return MaterialPageRoute(
            builder: (context) => const ChildrenClosesView(),  
          );
            case ClosesDetaailsView.routeName:
          return MaterialPageRoute(
            builder: (context) => const ClosesDetaailsView(),  
          );
            case SpecialSizeView.routeName:
          return MaterialPageRoute(
            builder: (context) => const SpecialSizeView(),  
          );
            case BasketView.routeName:
          return MaterialPageRoute(
            builder: (context) => const BasketView(),  
          );
             case AddressesView.routeName:
          return MaterialPageRoute(
            builder: (context) => const AddressesView(),  
          );
             case AddNewAddressView.routeName:
          return MaterialPageRoute(
            builder: (context) => const AddNewAddressView(),  
          );

             case PaymentView.routeName:
          return MaterialPageRoute(
            builder: (context) => const PaymentView(),  
          );
             case ConfirmOrderView.routeName:
          return MaterialPageRoute(
            builder: (context) => const ConfirmOrderView(),  
          );
             case FollowingOrderView.routeName:
          return MaterialPageRoute(
            builder: (context) => const FollowingOrderView(),  
          );


    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
