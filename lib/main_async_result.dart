import 'package:async/async.dart';
import 'package:http/http.dart' as http;

const _url = "https://api.github.com/repositories/31792824/issues";

class GithubApiClient {}

void main() async {
  final result = await Result.capture(http.get(_url));
  if (result.isValue) {
    print(result.asValue.value);
  } else {
    print(result.asError.error);
  }
}
