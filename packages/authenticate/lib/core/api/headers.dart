import 'dart:io';

Map<String, Object> AuthHeaders = {
  'accept': 'application/json, text/plain, */*',
  'content-type': 'application/x-www-form-urlencoded',
  'cache-control': 'no-cache',
  'x-hlapp': '3',
  'x-hl-version': '10000',
  'x-hlclientos': Platform.operatingSystem,
  'x-correlation-id': 'EngageSplunk-'
};

//Possible values include: "android" "fuchsia" "ios" "linux" "macos" "windows"

