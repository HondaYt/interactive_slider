import 'package:flutter/foundation.dart';

class InteractiveSliderController extends ValueNotifier<double> {
  InteractiveSliderController(super._value);

  @override
  set value(double value) => super.value = value;
}
