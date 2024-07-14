import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fauna_flutter_method_channel.dart';

abstract class FaunaFlutterPlatform extends PlatformInterface {
  /// Constructs a FaunaFlutterPlatform.
  FaunaFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static FaunaFlutterPlatform _instance = MethodChannelFaunaFlutter();

  /// The default instance of [FaunaFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelFaunaFlutter].
  static FaunaFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FaunaFlutterPlatform] when
  /// they register themselves.
  static set instance(FaunaFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
