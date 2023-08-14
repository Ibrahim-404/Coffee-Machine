class CoffeeMachine {
  double _coffeeBeans = 0, _water = 0, _milk = 0, _sugar = 0;
  set coffeeBeans(double amount) {
    this._coffeeBeans += amount;
    print("Added $amount coffee beans. Total beans: $_coffeeBeans");
  }

  set water(double amount) {
    this._water += amount;
    print("Added $amount water. Total liter: $_coffeeBeans");
  }

  set milk(double amount) {
    this._milk += amount;
    print("Added $amount milk. Total liter: $_milk");
  }

  set sugar(double amount) {
    this._sugar = amount;
    print("Added $amount milk. Total liter: $_sugar");
  }

  double get coffeeBeans {
    return this._coffeeBeans;
  }

  double get water {
    return this._water;
  }

  double get milk {
    return this._milk;
  }

  double get sugar {
    return this._sugar;
  }

  void orderCoffee(
      {required String coffeeType,
      required double sugarAmount,
      required Map<String, dynamic> coffee}) {
    Map<String, dynamic> help = coffee['coffee'][0];
    bool coffeeFound = false;
    help.forEach((key, value) {
      if (key == coffeeType) {
        coffeeFound = true;
        if (_coffeeBeans >= 5 && _water >= 5 && _milk >= 5) {
          print(
              'The coffee will be ready after ${value['wait time']}\nMaking a $key...');
          print('$key is ready! Enjoy your drink.');
          this._coffeeBeans -= 3;
          this._water -= 3;
          this._milk -= 3;
          this._sugar -= sugarAmount;
          print("The price of coffee: ${value['salary']}");
        } else {
          print('Insufficient resources to make coffee. Please refill.');
        }
      }
    });

    if (!coffeeFound) {
      print(
          "Sorry, this type of coffee is not supported now, but we will add this type soon!\n");
    }
  }

  void coffeeMachineStatus() {
    print(
        "coffee beans:$_coffeeBeans\nwater:$_water\nmilk:$_milk\nsugar:$_sugar");
  }

  void refill() {
    this._coffeeBeans = 100;
    this._milk = 100;
    this._sugar = 100;
    this._water = 100;
  }
}
