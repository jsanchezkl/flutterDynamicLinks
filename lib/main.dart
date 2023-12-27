import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:labfluttercsa/firebase_options.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

import 'package:labfluttercsa/pages/home_page.dart';
import 'package:labfluttercsa/pages/otra_page.dart';
import 'package:labfluttercsa/pages/servicios_page.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try { 
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,); 
  } catch (e) {
    print('Error initializing Firebase: $e');
  }

  runApp(const MyApp());

  await FirebaseAnalytics.instance.logBeginCheckout(
    value: 10.0,
    currency: 'US',
    items: [
      AnalyticsEventItem(itemName: 'Socks', itemId: 'xjw73ndnw'),
    ],
    coupon: '10PERCENTOFF',
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/otra': (context) => const OtraPage(),
        '/servicios': (context) => const ServiciosPage(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      },
    );
  }
}
