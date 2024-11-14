import 'base_config.dart';
import 'environment.dart';

class DevConfig implements BaseConfig {
  @override
  String get apiHost => "https://dev-api.frenbenhealth.com/v1";

  @override
  String get environment => Environment.development;

  @override
  String get socketURL => "https://dev-chat.frenbenhealth.com";

  @override
  String get emoji => " 🛠️";
}

class StagingConfig implements BaseConfig {
  @override
  String get apiHost => "https://stag-api.frenbenhealth.com/v1";

  @override
  String get environment => Environment.staging;

  @override
  String get socketURL => "https://stag-chat.frenbenhealth.com";

  @override
  String get emoji => " 🚧";
}

class ProdConfig implements BaseConfig {
  @override
  String get apiHost => "https://api.appserver.ie/v1";

  @override
  String get environment => Environment.production;

  @override
  String get socketURL => "https://payment.appserver.ie";

  @override
  String get emoji => " 🚀";
}
