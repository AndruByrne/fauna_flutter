import 'package:flutter_test/flutter_test.dart';
import 'package:fauna_flutter/fauna_flutter.dart';
import 'package:fauna_flutter/fauna_flutter_platform_interface.dart';
import 'package:fauna_flutter/fauna_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFaunaFlutterPlatform
    with MockPlatformInterfaceMixin
    implements FaunaFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FaunaFlutterPlatform initialPlatform = FaunaFlutterPlatform.instance;

  test('$MethodChannelFaunaFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFaunaFlutter>());
  });

  test('getPlatformVersion', () async {
    FaunaFlutter faunaFlutterPlugin = FaunaFlutter();
    MockFaunaFlutterPlatform fakePlatform = MockFaunaFlutterPlatform();
    FaunaFlutterPlatform.instance = fakePlatform;

    expect(await faunaFlutterPlugin.getPlatformVersion(), '42');
  });
}
