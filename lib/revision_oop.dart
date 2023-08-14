import 'dart:io';

import 'CoffeeMachine.dart';

void main() {
  CoffeeMachine coffeeMachine = CoffeeMachine();
  coffeeMachine.coffeeBeans = 100;
  coffeeMachine.milk = 100;
  coffeeMachine.sugar = 100;
  coffeeMachine.water = 100;
  print("\nWelcome in Coffee Machine ");
  Map<String, dynamic> coffeeChoices = {
    "coffee": [
      {
        'cappuccino': {
          'description':
              "A cappuccino is an espresso-based coffee drink that is traditionally prepared with steamed milk foam. Variations of the drink involve the use of cream instead of milk, using non-dairy milk substitutes and flavoring with cinnamon or chocolate powder",
          'salary': 2,
          'wait time': "5 minutes"
        },
        'americano': {
          'description':
              "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a different flavor from traditionally brewed coffee. Its strength varies with the number of shots of espresso and amount of water added.",
          'salary': 3,
          'wait time': "4 minutes"
        }
      }
    ]
  };
  print(
      "\nhello in coffee machine \n------------------------ \n\nif you want to what coffee machine can do! press 0\n\nif you want show description for Type of available types Enter the name of the coffee you want, so I advise you to see the available types first and if\nyou know all of type available chosee type and enter name and press 1\n\nIf you want to know the price of a specific type of coffee, enter the name of the available coffee and press 2\n\nif you want to make order of coffee enter name of coffee to want and press 3 \n\nThink you!\n\n");
  // print("enter your choices");
  // int choices = int.parse(stdin.readLineSync()!);
  // print("enter name of coffee to want!");
  // String coffeeNmae = stdin.readLineSync()!.toLowerCase();
  Map<String, dynamic> help = coffeeChoices['coffee'][0];
  while (true) {
    print("enter name of coffee to want!");
    String coffeeNmae = stdin.readLineSync()!.toLowerCase();
    if (coffeeNmae == 'q') {
      break;
    }
    print("enter your choices");
    int choices = int.parse(stdin.readLineSync()!);

    switch (choices) {
      case 0:
        printTypeCoffeeAvailable(help);
        break;
      case 1:
        availableOrNot(help, coffe_Name: coffeeNmae);
        break;
      case 2:
        printPrice(help, coffe_Name: coffeeNmae);
        break;
      case 3:
        coffeeMachine.orderCoffee(
            coffeeType: coffeeNmae, sugarAmount: 2, coffee: coffeeChoices);
        break;
      default:
        print("out of the range, range from 0 to 3\n");
        break;
    }
    print('if you want to exit enter q in name coffee');
  }
}

void printTypeCoffeeAvailable(Map<String, dynamic> coffee) {
  coffee.forEach((key, value) {
    print(key);
  });
}

void availableOrNot(Map<String, dynamic> coffee, {required String coffe_Name}) {
  bool found = false;
  coffee.forEach((key, value) {
    if (key == coffe_Name) {
      print(value['description']);
      found = true;
    }
  });

  if (!found) {
    print(
        "Sorry, this type of coffee is not supported now, but we will add this type soon!\n");
  }
}

void printPrice(Map<String, dynamic> coffee, {required String coffe_Name}) {
  bool found = false;
  coffee.forEach((key, value) {
    if (key == coffe_Name) {
      print(value['salary']);
      found = true;
    }
  });

  if (!found) {
    print(
        "Sorry, this type of coffee is not supported now, but we will add this type soon!\n");
  }
}
