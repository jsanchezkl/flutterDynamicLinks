import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class DynamicLinkService {
  Future<String> createDynamicLink(
  //String source,
   // String medium, 
   // String campaign, 
  ) async {
    final DynamicLinkParameters dynamicLinkParams = DynamicLinkParameters(
      uriPrefix: 'https://labfluttercsa.page.link',
      link: Uri.parse('https://www.example.com/'),
      androidParameters: AndroidParameters(
        packageName: 'com.tu_paquete.fluttercsa',
      ),
      iosParameters: IOSParameters(
        bundleId: 'com.example.app.ios',
      ),
      googleAnalyticsParameters: GoogleAnalyticsParameters(
        source: 'test', // Parámetro de origen
        medium: 'medium', // Parámetro de medio
        campaign: 'campaign', // Parámetro de campaña
      ),
    );

    final dynamicLink = await FirebaseDynamicLinks.instance.buildLink(dynamicLinkParams);
    return dynamicLink.toString();
  }
}


