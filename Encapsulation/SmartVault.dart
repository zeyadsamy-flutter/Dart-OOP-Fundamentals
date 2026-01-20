class SmartVault {
  int _money = 0;
  String _password = "0000";

  SmartVault({required int money, required String password}) {
    this.password = password;
    this._moneySetter = money;
  }


  set password(String password) {
    if(password.length != 4 ) {
          print("invalid input . please try again. must the password is 4 numbers");
    }else {
      int? inputPass = int.tryParse(password);
      if(inputPass == null || inputPass < 0) {
        print("try again. because the numbers of password must be positive");
      }else {
        _password = password;
      }
        
    }
  }


  set _moneySetter(int money) {
    if(money < 0) {
      print("please try again. the money must be positive. ");
    }else {
      _money = money;
    }
  }

  void deposit(int addmoney) {
    this._moneySetter = addmoney + this._money;
  }


  void withdraw({required int money,required String password}) {

    if(money <= _money && password == _password) {
      this._money -= money;
      print("the withdraw is complete.");
    }else if ( password != _password)  {
      print("invalid password. please try again");
    } else {
      print("Sorry, you dont have money enough.");
    }

    
  }

  int get totalmoney => _money;
}