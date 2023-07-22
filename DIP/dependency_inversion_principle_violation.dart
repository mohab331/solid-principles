// Example: Messaging App
//
// Let's understand the Dependency Inversion Principle using a messaging app example.
// Suppose we are building a messaging app with multiple platforms (e.g., email, SMS, and push notifications).
// We want to send messages to users through these different platforms.
// The problem here is that the MessagingApp class directly depends on the low-level platform classes.
// If we want to add or change a new platform or modify any platform's implementation,
// we need to modify the MessagingApp class. This tight coupling makes the code harder to maintain and extend.

class EmailPlatform {
  void sendEmail(String recipient, String message) {
    // Send email implementation.
  }
}

class SMSPlatform {
  void sendSMS(String recipient, String message) {
    // Send SMS implementation.
  }
}

class PushNotificationPlatform {
  void sendPushNotification(String recipient, String message) {
    // Send push notification implementation.
  }
}

class MessagingApp {
  EmailPlatform emailPlatform = EmailPlatform();
  SMSPlatform smsPlatform = SMSPlatform();
  PushNotificationPlatform pushNotificationPlatform = PushNotificationPlatform();

  void sendMessage(String recipient, String message, String platform) {
    if (platform == 'email') {
      emailPlatform.sendEmail(recipient, message);
    } else if (platform == 'sms') {
      smsPlatform.sendSMS(recipient, message);
    } else if (platform == 'push_notification') {
      pushNotificationPlatform.sendPushNotification(recipient, message);
    }
  }
}

// To follow the Dependency Inversion Principle, we introduce an abstraction (interface) that defines the contract for the messaging platforms.
// The high-level MessagingApp class will depend on this interface instead of the concrete platform classes.
abstract class MessagePlatform {
  void sendMessage(String recipient, String message);
}

class EmailPlatformA implements MessagePlatform {
  @override
  void sendMessage(String recipient, String message) {
    // Send email implementation.
  }
}

class SMSPlatformA implements MessagePlatform {
  @override
  void sendMessage(String recipient, String message) {
    // Send SMS implementation.
  }
}

class PushNotificationPlatformA implements MessagePlatform {
  @override
  void sendMessage(String recipient, String message) {
    // Send push notification implementation.
  }
}

class MessagingAppA {
  void sendMessage(MessagePlatform platform, String recipient, String message) {
    platform.sendMessage(recipient, message);
  }
}

// With this approach, the MessagingApp class now depends on the MessagePlatform interface,
// and it doesn't need to know the specific implementations of each platform.
// The specific platform implementations are separated from the high-level MessagingApp class,
// and we can easily add or change platforms without modifying the MessagingApp class.
// This makes the code more flexible and easier to maintain.