class Customer {
  final String name;
  double _purchaseAmount = 0.0; // Private

  Customer(this.name);

  void addP(double price) {
    _purchaseAmount += price;
  }

  double getPAmount() {
    return _purchaseAmount;
    // No discount for regular customer
  }
}

class LoyalCustomer extends Customer {
  LoyalCustomer(super.name);
  // Constructor for LoyalCustomer

  @override
  double getPAmount() {
    final discount = _purchaseAmount * 0.1;
    // Apply 10% discount
    return _purchaseAmount - discount;
  }
}

void main() {
  final customer = Customer("Khalid");
  customer.addP(54.5);
  customer.addP(12.2);
  print(customer.getPAmount());

  final loyalCustomer = LoyalCustomer("Sarah");
  loyalCustomer.addP(100.0);
  print(loyalCustomer.getPAmount());
}
