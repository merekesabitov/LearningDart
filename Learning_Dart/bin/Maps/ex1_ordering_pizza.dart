/*
Вам предоставлены цены на соответствующие пиццы в виде Map:

 const pizzaPrices = {
    'Venice': 289,
    'Double Cheese': 359,
    'Roman Margherita': 299,
  };

Напишите программу для расчета суммы заказа.

Например, при следующем заказе:
const myOrder = ['Venice', 'Double Cheese', 'Roman Margherita'];

Программа должна напечатать:
Заказано 3 пиццы из 3 на сумму: 947 рублей

Под задача № 1: если пиццы нет в меню, то программа должна сообщить об этом.

Заказано 2 пиццы из 3 на сумму: 648рублей
Roman Margherita нет в меню

Под задача № 2: вам поступила новая пицца Pepperoni стоимостью 199 руб., добавьте ее в карту pizzaPrice.
И распечатайте все меню.

Под задача № 3: Отсортируйте карту по ключам и выведите отсортированное меню на экран.
Примечание: Для сортировки можете воспользоваться SplayTreeMap.
*/
import "dart:collection";

//Menu with prices
final pizzaPrices = {
  'Venice': 289,
  'Double Cheese': 359,
  'Roman Margherita': 299,
};

//My test order
const myOrder = ['Venice', 'Double Cheese', 'Roman Margherita', 'TestPizza1', 'TestPizza2'];

//Task 1. Calculation of the order amount
void orderCalculation(List<String> list) {
  int total = 0;
  int existingPizza = 0;
  List<String?> missingPizza = [];

  for (final i in list) {
    if (pizzaPrices.containsKey(i)) {
      total += pizzaPrices[i] ?? 0;
      existingPizza += 1;
    } else {
      missingPizza.add(i);
    }
  }
  print('Заказано $existingPizza пиццы из ${pizzaPrices.keys.length} на сумму: $total рублей');

  //Subtask 1. If pizza isn't on the menu
  if (missingPizza.isNotEmpty) {
     print('${missingPizza.join(', ')} нет в меню');
  }
}

void main() {
  orderCalculation(myOrder);
  print('\nМеню:');
  //Subtask 2. Adding new pizza to the menu
  pizzaPrices['Pepperoni'] = 199;
  pizzaPrices.forEach((key, value) => print('$key - $value'));
  //Subtask 3. Sorting map by keys
  print('\nОтсортированное меню:');
  final sorted =
      SplayTreeMap<String, int>.from(pizzaPrices, (a, b) => a.compareTo(b));
  sorted.forEach((key, value) => print('$key - $value'));
}
