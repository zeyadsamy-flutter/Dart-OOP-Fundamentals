import 'SmartVault.dart';
void main() {
  SmartVault account1 = SmartVault(money: 1200, password: "1254");
  account1.deposit(1200);
  account1.withdraw(money: 1250, password: "1254");

  print(account1.totalmoney);
}