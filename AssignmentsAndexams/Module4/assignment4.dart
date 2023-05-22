abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
  }
  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance += balance * interestRate;
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
    } else {
      print('Insufficient funds');
    }
  }
}

void main() {

  var savingsAccount = SavingsAccount(01601966496, 11000.0, 3.50);

  print('Savings Account - Initial Balance: ${savingsAccount.balance}');

  savingsAccount.deposit(6000.0);
  print('Savings Account - Balance after deposit: ${savingsAccount.balance}');

  savingsAccount.withdraw(3000.0);
  print('Savings Account - Balance after withdrawal: ${savingsAccount.balance}');

  var currentAccount = CurrentAccount(01403818435, 20000.0, 2000.0);

  print('\nCurrent Account - Initial Balance: ${currentAccount.balance}');

  currentAccount.deposit(9000.0);
  print('Current Account - Balance after deposit: ${currentAccount.balance}');

  currentAccount.withdraw(40000.0);
  print('Current Account - Balance after withdrawal: ${currentAccount.balance}');
}
