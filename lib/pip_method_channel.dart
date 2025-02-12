import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pip_platform_interface.dart';

/// An implementation of [PipPlatform] that uses method channels.
class MethodChannelPip extends PipPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pip');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
