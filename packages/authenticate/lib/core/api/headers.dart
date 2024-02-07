import 'dart:io';

Map<String, Object> authHeaders = {
  'accept': 'application/json, text/plain, */*',
  'content-type': 'application/x-www-form-urlencoded',
  'cache-control': 'no-cache',
  'x-hlapp': '3',
  'x-hl-version': '10000',
  'x-hlclientos': Platform.operatingSystem,
  'x-correlation-id': 'EngageSplunk-'
};

Map<String, Object> ApiHeaders = {
  'accept': 'application/json, text/plain, */*',
  'x-hlapp': '3',
  'x-hluser-token': '',
  'x-hl-version': '10000',
  'x-hlclientos': Platform.operatingSystem,
  'x-correlation-id': 'EngageSplunk-',
  'cache-control': 'no-cache',
  'content-type': 'application/x-www-form-urlencoded',
};

//Possible values include: "android" "fuchsia" "ios" "linux" "macos" "windows"

