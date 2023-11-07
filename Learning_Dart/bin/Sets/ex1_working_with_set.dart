/*
Упражнение № 1: Работа с Set

Перед вами список: 

1) [56, 59, 53, 75, 62, 61, 75, 65, 59, 62, 64, 53,
 54, 62, 69, 53, 55, 62, 54, 66, 55, 57, 58, 75,
 72, 55, 51, 56, 71, 66, 57, 56, 59, 73, 68, 57,
 50, 54, 62, 68, 59, 64, 59, 59, 71, 68, 57, 54, 53, 72]

2) [1.5, 5.31, 555, 65]

Ваша задача в переменную mySet сохранить множество уникальных элементов,
хранящихся в списке. И в качестве ответа необходимо вывести среднее
арифметическое всех элементов найденного множества mySet.
*/

final list = [56, 59, 53, 75, 62, 61, 75, 65, 59, 62, 64, 53,
 54, 62, 69, 53, 55, 62, 54, 66, 55, 57, 58, 75,
 72, 55, 51, 56, 71, 66, 57, 56, 59, 73, 68, 57,
 50, 54, 62, 68, 59, 64, 59, 59, 71, 68, 57, 54, 53, 72];

final list2 = [1.5, 5.31, 555, 65];

//way 1
double calculateArithmeticMean (Set<num> collection) {
  double amount = 0;
  
  for(final i in collection) {
    amount += i;
  }
  return amount / ((collection.length).toDouble());
}

double listConverter (List<num> someList) {
  return calculateArithmeticMean(someList.toSet());
}

void main() {
  final test = listConverter(list);
  print(test);
  final test2 = listConverter(list2);
  print(test2);
}
