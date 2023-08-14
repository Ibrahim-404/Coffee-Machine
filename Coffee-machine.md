## Exercise Description: Building a Coffee Machine Program with Dart.

In this exercise, you will create a coffee machine program using the Dart programming language. This program will allow users to interact with a coffee machine, order different types of coffee, and manage the coffee machine's inventory.

Here are the steps to follow for this exercise:

### Step 1: Class Creation

- Start by creating a class called `CoffeeMachine`. This class will represent the coffee machine itself and will contain properties and methods related to its functionality.
- Think about the properties that a coffee machine should have. For example, you can include properties like `coffeeBeans`, `water`, and `milk` to track the inventory levels.
- Define appropriate data types for these properties and initialize them with default values.

### Step 2: Object Instantiation

- Once you have created the `CoffeeMachine` class, instantiate an object of this class in the main function. This object will represent the actual coffee machine that users will interact with.

### Step 3: Encapsulation

- Apply encapsulation by making the properties of the `CoffeeMachine` class private. Use Dart's naming convention of prefixing private properties with an underscore (_) to indicate that they should not be accessed directly from outside the class.
- Implement getter and setter methods for the private properties to allow controlled access and modification of the coffee machine's inventory.

### Step 4: Coffee Ordering

- Add a method in the `CoffeeMachine` class called `orderCoffee`. This method should take parameters like `coffeeType` and `sugarAmount` to represent the user's coffee preferences.
- Inside the `orderCoffee` method, use conditional statements to determine the coffee recipe based on the user's preferences. For example, if the user orders a cappuccino, the method should adjust the inventory levels accordingly (e.g., decrease the coffee beans and milk).
- Display a message indicating the successful preparation of the coffee.

### Step 5: Testing

- Test your coffee machine program by ordering different types of coffee with various preferences. Make sure to print the coffee machine's inventory levels before and after each coffee order to verify that the inventory is updated correctly.

### Step 6: Optional Enhancements

- Once you have implemented the basic functionality, you can consider adding additional features to enhance your coffee machine program. For example, you can include methods to refill the coffee machine's inventory, check the available inventory levels, or create a menu for the user to select their coffee preferences.


By completing this exercise, you will gain a better understanding of how to implement OOP principles in Dart while building a practical coffee machine program. This exercise will reinforce your knowledge of classes, objects, and encapsulation, allowing you to create well-structured and modular code. Happy coding!
