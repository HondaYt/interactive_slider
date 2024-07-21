import 'package:flutter/foundation.dart';
import 'dart:async';

class InteractiveSliderController extends ValueNotifier<double> {
  InteractiveSliderController(super._value);

  final StreamController<double> _streamController = StreamController<double>();

  Stream<double> get stream => _streamController.stream;

  @override
  set value(double newValue) {
    super.value = newValue;
    _streamController.add(newValue);
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }
}
