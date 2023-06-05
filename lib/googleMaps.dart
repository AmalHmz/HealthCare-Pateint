
import 'package:url_launcher/url_launcher.dart';


class MapUtils {
 MapUtils._();
void openMapLocation(double latitude, double longitude) async {
  final url = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
  if (await canLaunchUrl(url as Uri)) {
    await launchUrl(url as Uri);
  } else {
    throw 'Could not open the map.';
  }
}


}