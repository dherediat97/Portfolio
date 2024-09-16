import 'package:portfolio/app/config/enviroment_config.dart';

class AppAssets {
  static const String assetsFolder =
      EnvironmentConfig.environment == 'prod' ? 'assets' : '';
  static const String imagesFolder = '$assetsFolder/images';
}
