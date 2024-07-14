import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'fauna_flutter_platform_interface.dart';

/// An implementation of [FaunaFlutterPlatform] that uses method channels.
class MethodChannelFaunaFlutter extends FaunaFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('fauna_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
