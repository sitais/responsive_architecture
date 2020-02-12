import 'package:flutter/widgets.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;

  double deviceWidth = 0;

  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.height;
  } else {
    deviceWidth = mediaQuery.size.width;
  }

  if (deviceWidth > 1500) {
    return DeviceScreenType.Desktop;
  }

  if (deviceWidth > 1290) {
    return DeviceScreenType.Laptop;
  }

  if (deviceWidth > 1026) {
    return DeviceScreenType.Tablet;
  }

  if (deviceWidth > 900) {
    return DeviceScreenType.Smartphone;
  }

  if (deviceWidth > 630) {
    return DeviceScreenType.Mobile;
  }

  return DeviceScreenType.Handset;
}
