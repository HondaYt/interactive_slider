import 'package:flutter/foundation.dart';

class InteractiveSliderController extends ValueNotifier<double> {
  InteractiveSliderController(super._value);

  bool _isDisposed = false;

  @override
  set value(double value) {
    if (!_isDisposed) {
      super.value = value;
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    super.dispose();
  }
}
