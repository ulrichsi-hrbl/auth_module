import 'dart:io';

import 'package:flutter/foundation.dart';

Map<String, Object> authHeaders = {
  'accept': 'application/json, text/plain, */*',
  'content-type': 'application/x-www-form-urlencoded',
  'cache-control': 'no-cache',
  'x-hlapp': '3',
  'x-hl-version': '10000',
  'x-hlclientos': !kIsWeb ? Platform.operatingSystem : "web",
  'x-correlation-id': 'EngageSplunk-'
};

Map<String, Object> apiHeaders = {
  'accept': 'application/json, text/plain, */*',
  'content-type': 'application/json',
  'cache-control': 'no-cache',
  'x-hlapp': '3',
  'x-hl-version': '10000',
  'x-hlclientos': !kIsWeb ? Platform.operatingSystem : "web",
  'x-correlation-id': 'EngageSplunk-',
};

//Possible values include: "android" "fuchsia" "ios" "linux" "macos" "windows"

