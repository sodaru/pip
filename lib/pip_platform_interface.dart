import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pip_method_channel.dart';

abstract class PipPlatform extends PlatformInterface {
  /// Constructs a PipPlatform.
  PipPlatform() : super(token: _token);

  static final Object _token = Object();

  static PipPlatform _instance = MethodChannelPip();

  /// The default instance of [PipPlatform] to use.
  ///
  /// Defaults to [MethodChannelPip].
  static PipPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PipPlatform] when
  /// they register themselves.
  static set instance(PipPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
