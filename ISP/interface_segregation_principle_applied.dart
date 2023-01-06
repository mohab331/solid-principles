
/// here ISP applied as each class implements its required methods


abstract class Payment {
List<Object> getPayments();
}

class Bank extends Payment {
void initiatePayments();
}
class Loan extends Payment {
void initiateLoanSettlement();
void initiateRePayment();
}


 class BankPayment implements Bank {

   @override
   void initiatePayments() {
    // ...
  }

  @override
   List<Object> getPayments() {
    // ...
  }
}


class LoanPayment implements Loan {

  @override
   void initiateLoanSettlement() {
    // ...
  }

  @override
   void initiateRePayment() {
    // ...
  }

  @override
  List<Object> getPayments() {
    // ...
  }
}