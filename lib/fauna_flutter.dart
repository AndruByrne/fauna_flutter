
import 'fauna_flutter_platform_interface.dart';

class FaunaFlutter {
  Future<String?> getPlatformVersion() {
    return FaunaFlutterPlatform.instance.getPlatformVersion();
  }
}
