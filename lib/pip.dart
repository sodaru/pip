
import 'pip_platform_interface.dart';

class Pip {
  Future<String?> getPlatformVersion() {
    return PipPlatform.instance.getPlatformVersion();
  }
}
