import 'package:http/http.dart' as http;

class Network {
  String url = "https://attaqwa.masjidku.my/api/";

  getData(apiUrl) async {
    String fullUrl = url + apiUrl.toString();
    return await http.get(Uri.parse(fullUrl));
  }
}