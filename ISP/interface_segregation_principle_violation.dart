//Suppose we are building a smart home app that controls various electronic devices,
// such as lights and thermostats. Each device has specific functionalities,
// and we want to create interfaces that tailor to each device's capabilities.


//The problem here is that not all devices support every functionality.
// For instance, a light might not have a temperature setting,
// and a thermostat might not have a brightness adjustment.
// By having a single broad interface, we are forcing all devices to implement methods they might not use,
// leading to unnecessary complexities.

abstract class ElectronicDevice {
  void turnOn();
  void turnOff();
  void adjustBrightness(double brightness);
  void setTemperature(double temperature);
}


//To follow the Interface Segregation Principle,
// we create separate interfaces for functionalities that are specific to each device:
//Now, each electronic device can implement the specific interface(s) that match its capabilities:
abstract class Switchable {
  void turnOn();
  void turnOff();
}

abstract class BrightnessAdjustable {
  void adjustBrightness(double brightness);
}

abstract class TemperatureAdjustable {
  void setTemperature(double temperature);
}


//With this approach, each device only implements the interfaces relevant to its functionalities.
// A light bulb implements Switchable and BrightnessAdjustable, while a thermostat implements Switchable and TemperatureAdjustable.
// The smart speaker, which doesn't support brightness or temperature adjustments, only implements Switchable.


class SmartLightBulb implements Switchable, BrightnessAdjustable {
  @override
  void adjustBrightness(double brightness) {
    // TODO: implement adjustBrightness
  }

  @override
  void turnOff() {
    // TODO: implement turnOff
  }

  @override
  void turnOn() {
    // TODO: implement turnOn
  }
  // Implement turnOn, turnOff, and adjustBrightness methods
}

class SmartThermostat implements Switchable, TemperatureAdjustable {
  @override
  void setTemperature(double temperature) {
    // TODO: implement setTemperature
  }

  @override
  void turnOff() {
    // TODO: implement turnOff
  }

  @override
  void turnOn() {
    // TODO: implement turnOn
  }
  // Implement turnOn, turnOff, and setTemperature methods
}

class SmartSpeaker implements Switchable {
  @override
  void turnOff() {
    // TODO: implement turnOff
  }

  @override
  void turnOn() {
    // TODO: implement turnOn
  }
  // Implement turnOn and turnOff methods
}
