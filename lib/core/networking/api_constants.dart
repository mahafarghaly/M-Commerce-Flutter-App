import 'package:flutter_dotenv/flutter_dotenv.dart';
class ApiConstants {
  static final String _apiKey = dotenv.env['API_KEY']!;
  static final String _apiPassword = dotenv.env['API_PASSWORD']!;
  static final String _hostname = dotenv.env['HOSTNAME']!;
  static final String baseUrl = "https://$_apiKey:$_apiPassword@$_hostname/admin/api/2024-04/";
}