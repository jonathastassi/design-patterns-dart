import 'dart:developer';

class ConfigApi {
  String url = Timeline.now.toString();

  static ConfigApi? _instance;

  ConfigApi._();

  factory ConfigApi() => _instance ??= ConfigApi._();  
}

void main(List<String> arguments) async {
  final time1 = ConfigApi();

  await Future.delayed(Duration(seconds: 2));

  final time2 = ConfigApi();

  print(time1.url);
  print(time2.url);
}
