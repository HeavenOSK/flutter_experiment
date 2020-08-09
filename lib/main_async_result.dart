import 'package:async/async.dart';
import 'package:http/http.dart' as http;

const _url = "https://api.github.com/repositories/31792824/issues";

class CustomException implements Exception {}

void main() async {
  final result = await Result.capture(http.get(_url));

  if (result.isError) {
    switch (result.asError.error.runtimeType) {
      case CustomException:
        print('Custom Exception');
        break;
      case http.ClientException:
        print('Client Exception');
        break;
      default:
        print('Unexpected Error');
        break;
    }
  } else {
    final response = result.asValue.value;
    print(response.body);
  }
}
