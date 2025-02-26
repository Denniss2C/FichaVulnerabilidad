// auth/login/login_service.dart
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart' as xml;

Future<Map<String, dynamic>> loginUser(String username, String password) async {
  final url = Uri.parse(
      'https://capacitacionalpha.inclusion.gob.ec/actben-ws/logmob-service?wsdl');

  final soapBody = '''
  <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:impl="http://impl.service.siimies.web.login.mobile/">
      <soapenv:Body>
          <impl:autenticacion>
            <username>$username</username>
            <password>$password</password>
          </impl:autenticacion>
      </soapenv:Body>
    </soapenv:Envelope>
  ''';

  try {
    final response = await http.post(
      url,
      body: soapBody,
    );

    if (response.statusCode == 200) {
      final responseBody = response.body;
      final document = xml.XmlDocument.parse(responseBody);
      final cod = document.findAllElements('cod').first.text;
      final iduser = document.findAllElements('iduser').first.text;
      final mensaje = document.findAllElements('mensaje').first.text;
      final nombreuser = document.findAllElements('nombreuser').first.text;
      final token = document.findAllElements('token').first.text;

      return {
        'status': 'success',
        'cod': cod,
        'iduser': iduser,
        'mensaje': mensaje,
        'nombreuser': nombreuser,
        'token': token,
      };
    } else {
      return {
        'status': 'error',
        'message': 'Error en la solicitud: ${response.statusCode}',
        'response': response.body,
      };
    }
  } catch (e) {
    return {
      'status': 'error',
      'message': 'Excepción: $e',
    };
  }
}
