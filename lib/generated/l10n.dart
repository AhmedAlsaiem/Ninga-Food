// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `FoodNinja`
  String get appName {
    return Intl.message('FoodNinja', name: 'appName', desc: '', args: []);
  }

  /// `Find your  Comfort Food here`
  String get findyourComfortFoodhere {
    return Intl.message(
      'Find your  Comfort Food here',
      name: 'findyourComfortFoodhere',
      desc: '',
      args: [],
    );
  }

  /// `Here You Can find a chef or dish for every taste and color. Enjoy!`
  String get hereYouCanfindachefordishforeverytaste {
    return Intl.message(
      'Here You Can find a chef or dish for every taste and color. Enjoy!',
      name: 'hereYouCanfindachefordishforeverytaste',
      desc: '',
      args: [],
    );
  }

  /// `Deliver Favorite Food`
  String get deliverFavoriteFood {
    return Intl.message(
      'Deliver Favorite Food',
      name: 'deliverFavoriteFood',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy a fast and smooth food delivery at your doorstep`
  String get enjoyFastAndSmoth {
    return Intl.message(
      'Enjoy a fast and smooth food delivery at your doorstep',
      name: 'enjoyFastAndSmoth',
      desc: '',
      args: [],
    );
  }

  /// `Food Ninja is Where Your Comfort Food Lives`
  String get foodNinjaisWhere {
    return Intl.message(
      'Food Ninja is Where Your Comfort Food Lives',
      name: 'foodNinjaisWhere',
      desc: '',
      args: [],
    );
  }

  /// `Login To Your Account`
  String get loginToYourAccount {
    return Intl.message(
      'Login To Your Account',
      name: 'loginToYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Or Continue With`
  String get orContinueWith {
    return Intl.message(
      'Or Continue With',
      name: 'orContinueWith',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message('Facebook', name: 'facebook', desc: '', args: []);
  }

  /// `Google`
  String get google {
    return Intl.message('Google', name: 'google', desc: '', args: []);
  }

  /// `Forgot Your Password?`
  String get forgotYourPassword {
    return Intl.message(
      'Forgot Your Password?',
      name: 'forgotYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Sign Up For Free`
  String get signUpForFree {
    return Intl.message(
      'Sign Up For Free',
      name: 'signUpForFree',
      desc: '',
      args: [],
    );
  }

  /// `Keep Me Signed In`
  String get keepMeSignedIn {
    return Intl.message(
      'Keep Me Signed In',
      name: 'keepMeSignedIn',
      desc: '',
      args: [],
    );
  }

  /// `Email Me About Special Pricing`
  String get emailMeAboutSpecialPricing {
    return Intl.message(
      'Email Me About Special Pricing',
      name: 'emailMeAboutSpecialPricing',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `already have an account?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'already have an account?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Fill in your bio to get started`
  String get fillInYourBio {
    return Intl.message(
      'Fill in your bio to get started',
      name: 'fillInYourBio',
      desc: '',
      args: [],
    );
  }

  /// `This data will be displayed in your account profile for security`
  String get accountProfileSecurityNote {
    return Intl.message(
      'This data will be displayed in your account profile for security',
      name: 'accountProfileSecurityNote',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message('First Name', name: 'firstName', desc: '', args: []);
  }

  /// `Last Name`
  String get lastName {
    return Intl.message('Last Name', name: 'lastName', desc: '', args: []);
  }

  /// `Mobile Number`
  String get mobileNumber {
    return Intl.message(
      'Mobile Number',
      name: 'mobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Upload Your Photo Profile`
  String get uploadYourPhoto {
    return Intl.message(
      'Upload Your Photo Profile',
      name: 'uploadYourPhoto',
      desc: '',
      args: [],
    );
  }

  /// `From Gallery`
  String get fromGallery {
    return Intl.message(
      'From Gallery',
      name: 'fromGallery',
      desc: '',
      args: [],
    );
  }

  /// `Take Photo`
  String get takePhoto {
    return Intl.message('Take Photo', name: 'takePhoto', desc: '', args: []);
  }

  /// `Set Your Location`
  String get setYourLocation {
    return Intl.message(
      'Set Your Location',
      name: 'setYourLocation',
      desc: '',
      args: [],
    );
  }

  /// `Your Location`
  String get yourLocation {
    return Intl.message(
      'Your Location',
      name: 'yourLocation',
      desc: '',
      args: [],
    );
  }

  /// `Set Location`
  String get setLocation {
    return Intl.message(
      'Set Location',
      name: 'setLocation',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `PayPal`
  String get paypal {
    return Intl.message('PayPal', name: 'paypal', desc: '', args: []);
  }

  /// `VISA`
  String get visa {
    return Intl.message('VISA', name: 'visa', desc: '', args: []);
  }

  /// `Payoneer`
  String get payoneer {
    return Intl.message('Payoneer', name: 'payoneer', desc: '', args: []);
  }

  /// `2121 6352 8465 ****`
  String get paymentCardMasked {
    return Intl.message(
      '2121 6352 8465 ****',
      name: 'paymentCardMasked',
      desc: '',
      args: [],
    );
  }

  /// `2121 6352 8465 *****`
  String get paymentCardPaypal {
    return Intl.message(
      '2121 6352 8465 *****',
      name: 'paymentCardPaypal',
      desc: '',
      args: [],
    );
  }

  /// `2121 6352 8465 *****`
  String get paymentCardVisa {
    return Intl.message(
      '2121 6352 8465 *****',
      name: 'paymentCardVisa',
      desc: '',
      args: [],
    );
  }

  /// `2121 6352 8465 *****`
  String get paymentCardPayoneer {
    return Intl.message(
      '2121 6352 8465 *****',
      name: 'paymentCardPayoneer',
      desc: '',
      args: [],
    );
  }

  /// `Enter 4-digit Verification code`
  String get enter4DigitCode {
    return Intl.message(
      'Enter 4-digit Verification code',
      name: 'enter4DigitCode',
      desc: '',
      args: [],
    );
  }

  /// `Code send to +6282045****. This code will expired in 01:30`
  String get codeSentNote {
    return Intl.message(
      'Code send to +6282045****. This code will expired in 01:30',
      name: 'codeSentNote',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Select which contact details should we use to reset your password`
  String get selectContactDetails {
    return Intl.message(
      'Select which contact details should we use to reset your password',
      name: 'selectContactDetails',
      desc: '',
      args: [],
    );
  }

  /// `Via sms: ●●●● ●●●● 4235`
  String get viaSms {
    return Intl.message(
      'Via sms: ●●●● ●●●● 4235',
      name: 'viaSms',
      desc: '',
      args: [],
    );
  }

  /// `Via email: ●●●● @gmail.com`
  String get viaEmail {
    return Intl.message(
      'Via email: ●●●● @gmail.com',
      name: 'viaEmail',
      desc: '',
      args: [],
    );
  }

  /// `Reset your password here`
  String get resetYourPassword {
    return Intl.message(
      'Reset your password here',
      name: 'resetYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Order details`
  String get orderDetails {
    return Intl.message(
      'Order details',
      name: 'orderDetails',
      desc: '',
      args: [],
    );
  }

  /// `Order details`
  String get orderDetailsWithTrash {
    return Intl.message(
      'Order details',
      name: 'orderDetailsWithTrash',
      desc: '',
      args: [],
    );
  }

  /// `Spacy fresh crab`
  String get spacyFreshCrab {
    return Intl.message(
      'Spacy fresh crab',
      name: 'spacyFreshCrab',
      desc: '',
      args: [],
    );
  }

  /// `Waroenk kita`
  String get waroenkKita {
    return Intl.message(
      'Waroenk kita',
      name: 'waroenkKita',
      desc: '',
      args: [],
    );
  }

  /// `Sub-Total`
  String get subTotal {
    return Intl.message('Sub-Total', name: 'subTotal', desc: '', args: []);
  }

  /// `Delivery Charge`
  String get deliveryCharge {
    return Intl.message(
      'Delivery Charge',
      name: 'deliveryCharge',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message('Discount', name: 'discount', desc: '', args: []);
  }

  /// `Total`
  String get total {
    return Intl.message('Total', name: 'total', desc: '', args: []);
  }

  /// `Place My Order`
  String get placeMyOrder {
    return Intl.message(
      'Place My Order',
      name: 'placeMyOrder',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Order`
  String get confirmOrder {
    return Intl.message(
      'Confirm Order',
      name: 'confirmOrder',
      desc: '',
      args: [],
    );
  }

  /// `Deliver To`
  String get deliverTo {
    return Intl.message('Deliver To', name: 'deliverTo', desc: '', args: []);
  }

  /// `4517 Washington Ave. Manchester, Kentucky 39495`
  String get deliverToFull {
    return Intl.message(
      '4517 Washington Ave. Manchester, Kentucky 39495',
      name: 'deliverToFull',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `Shipping`
  String get shipping {
    return Intl.message('Shipping', name: 'shipping', desc: '', args: []);
  }

  /// `Order Location`
  String get orderLocation {
    return Intl.message(
      'Order Location',
      name: 'orderLocation',
      desc: '',
      args: [],
    );
  }

  /// `8502 Preston Rd. Inglewood, Maine 98380`
  String get orderLocationFull {
    return Intl.message(
      '8502 Preston Rd. Inglewood, Maine 98380',
      name: 'orderLocationFull',
      desc: '',
      args: [],
    );
  }

  /// `Reorder`
  String get reorder {
    return Intl.message('Reorder', name: 'reorder', desc: '', args: []);
  }

  /// `Process`
  String get process {
    return Intl.message('Process', name: 'process', desc: '', args: []);
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been taken by the driver`
  String get orderTakenByDriver {
    return Intl.message(
      'Your order has been taken by the driver',
      name: 'orderTakenByDriver',
      desc: '',
      args: [],
    );
  }

  /// `Recently`
  String get recently {
    return Intl.message('Recently', name: 'recently', desc: '', args: []);
  }

  /// `Topup for $100 was successful`
  String get topupSuccessful {
    return Intl.message(
      'Topup for \$100 was successful',
      name: 'topupSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been canceled`
  String get orderCanceled {
    return Intl.message(
      'Your order has been canceled',
      name: 'orderCanceled',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been taken by the driver`
  String get notificationOrderTaken {
    return Intl.message(
      'Your order has been taken by the driver',
      name: 'notificationOrderTaken',
      desc: '',
      args: [],
    );
  }

  /// `Topup for $100 was successful`
  String get notificationTopupSuccess {
    return Intl.message(
      'Topup for \$100 was successful',
      name: 'notificationTopupSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been canceled`
  String get notificationOrderCancelled {
    return Intl.message(
      'Your order has been canceled',
      name: 'notificationOrderCancelled',
      desc: '',
      args: [],
    );
  }

  /// `10.00 Am`
  String get notificationTime10am {
    return Intl.message(
      '10.00 Am',
      name: 'notificationTime10am',
      desc: '',
      args: [],
    );
  }

  /// `22 July 2021`
  String get notificationDate22July2021 {
    return Intl.message(
      '22 July 2021',
      name: 'notificationDate22July2021',
      desc: '',
      args: [],
    );
  }

  /// `Thank You!`
  String get thankYou {
    return Intl.message('Thank You!', name: 'thankYou', desc: '', args: []);
  }

  /// `Enjoy Your Meal`
  String get enjoyYourMeal {
    return Intl.message(
      'Enjoy Your Meal',
      name: 'enjoyYourMeal',
      desc: '',
      args: [],
    );
  }

  /// `Please rate your Restaurant`
  String get rateRestaurant {
    return Intl.message(
      'Please rate your Restaurant',
      name: 'rateRestaurant',
      desc: '',
      args: [],
    );
  }

  /// `Please rate your Food`
  String get rateFood {
    return Intl.message(
      'Please rate your Food',
      name: 'rateFood',
      desc: '',
      args: [],
    );
  }

  /// `Please rate your last Driver`
  String get rateDriver {
    return Intl.message(
      'Please rate your last Driver',
      name: 'rateDriver',
      desc: '',
      args: [],
    );
  }

  /// `Leave feedback`
  String get leaveFeedback {
    return Intl.message(
      'Leave feedback',
      name: 'leaveFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message('Submit', name: 'submit', desc: '', args: []);
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `9:41`
  String get timeFormat {
    return Intl.message('9:41', name: 'timeFormat', desc: '', args: []);
  }

  /// `Voucher Promo`
  String get voucherPromo {
    return Intl.message(
      'Voucher Promo',
      name: 'voucherPromo',
      desc: '',
      args: [],
    );
  }

  /// `Special Deal For October`
  String get specialDealForOctober {
    return Intl.message(
      'Special Deal For October',
      name: 'specialDealForOctober',
      desc: '',
      args: [],
    );
  }

  /// `Special Deal For\nOctober`
  String get specialDealForOctoberMultiline {
    return Intl.message(
      'Special Deal For\nOctober',
      name: 'specialDealForOctoberMultiline',
      desc: '',
      args: [],
    );
  }

  /// `Order Now`
  String get orderNow {
    return Intl.message('Order Now', name: 'orderNow', desc: '', args: []);
  }

  /// `Check out`
  String get checkOut {
    return Intl.message('Check out', name: 'checkOut', desc: '', args: []);
  }

  /// `Check out`
  String get orderActionCheckOut {
    return Intl.message(
      'Check out',
      name: 'orderActionCheckOut',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get orderActionEdit {
    return Intl.message('Edit', name: 'orderActionEdit', desc: '', args: []);
  }

  /// `set location`
  String get orderActionSetLocation {
    return Intl.message(
      'set location',
      name: 'orderActionSetLocation',
      desc: '',
      args: [],
    );
  }

  /// `Member Gold`
  String get memberGold {
    return Intl.message('Member Gold', name: 'memberGold', desc: '', args: []);
  }

  /// `You Have 3 Voucher`
  String get youHave3Voucher {
    return Intl.message(
      'You Have 3 Voucher',
      name: 'youHave3Voucher',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get favorite {
    return Intl.message('Favorite', name: 'favorite', desc: '', args: []);
  }

  /// `Buy Again`
  String get buyAgain {
    return Intl.message('Buy Again', name: 'buyAgain', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Chat`
  String get chat {
    return Intl.message('Chat', name: 'chat', desc: '', args: []);
  }

  /// `Online`
  String get online {
    return Intl.message('Online', name: 'online', desc: '', args: []);
  }

  /// `Your Order Just Arrived!`
  String get orderArrivedNotification {
    return Intl.message(
      'Your Order Just Arrived!',
      name: 'orderArrivedNotification',
      desc: '',
      args: [],
    );
  }

  /// `Ringing...`
  String get ringing {
    return Intl.message('Ringing...', name: 'ringing', desc: '', args: []);
  }

  /// `15.23 Min`
  String get callDuration {
    return Intl.message('15.23 Min', name: 'callDuration', desc: '', args: []);
  }

  /// `Popular`
  String get popular {
    return Intl.message('Popular', name: 'popular', desc: '', args: []);
  }

  /// `Wijie Bar and Resto`
  String get wijieBarAndResto {
    return Intl.message(
      'Wijie Bar and Resto',
      name: 'wijieBarAndResto',
      desc: '',
      args: [],
    );
  }

  /// `19 Km 4,8 Rating`
  String get kmRating {
    return Intl.message(
      '19 Km 4,8 Rating',
      name: 'kmRating',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get viewAll {
    return Intl.message('View All', name: 'viewAll', desc: '', args: []);
  }

  /// `Popular Menu`
  String get popularMenu {
    return Intl.message(
      'Popular Menu',
      name: 'popularMenu',
      desc: '',
      args: [],
    );
  }

  /// `Testimonials`
  String get testimonials {
    return Intl.message(
      'Testimonials',
      name: 'testimonials',
      desc: '',
      args: [],
    );
  }

  /// `Rainbow Sandwich`
  String get rainbowSandwich {
    return Intl.message(
      'Rainbow Sandwich',
      name: 'rainbowSandwich',
      desc: '',
      args: [],
    );
  }

  /// `Sugarless`
  String get sugarless {
    return Intl.message('Sugarless', name: 'sugarless', desc: '', args: []);
  }

  /// `4,8 Rating 2000+ Order`
  String get ratingAndOrders {
    return Intl.message(
      '4,8 Rating 2000+ Order',
      name: 'ratingAndOrders',
      desc: '',
      args: [],
    );
  }

  /// `Add To Chart`
  String get addToCart {
    return Intl.message('Add To Chart', name: 'addToCart', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
