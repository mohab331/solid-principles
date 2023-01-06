abstract class Payment {
  void initiatePayments();
  List<Object>? getPayments();
  void initiateLoanSettlement();
  void initiateRePayment();
}


class BankPayment implements Payment{
  @override
   void initiatePayments() {
    // ...
  }


  @override
  List<Object>? getPayments() {
    // ...
  }

 /// VIOLATES ISP as there is methods not implemented and needed in class BankPayment
  @override
   void initiateLoanSettlement() {
    throw new Exception("This is not a loan payment");
  }

  @override
   void initiateRePayment() {
    throw new Exception("This is not a loan payment");
  }
}


class LoanPayment implements Payment {

  /// VIOLATES ISP as there is methods not implemented and needed in class BankPayment
  @override
   void initiatePayments() {
    throw Exception("This is not a bank payment");
  }
  
  @override
   List<Object>? getPayments() {
    // ...
  }

  @override
   void initiateLoanSettlement() {
    // ...
  }

  @override
   void initiateRePayment() {
    // ...
  }
}