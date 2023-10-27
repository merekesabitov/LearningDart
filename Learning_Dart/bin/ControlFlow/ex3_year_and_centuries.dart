/*
Упражнение № 3: Года и века!

Вам будет дан год, верните тот век, в котором он находится.
Первый век охватывает период с 1 года до 100 года включительно,
второй - с 101 года до 200 года включительно и т. д.

Входные данные:

1705
1900
1601
2000

Результат:

18
19
17
20
*/

centuryDeterminant(int year) {
  double? century;
   if (year % 100 == 0) {
    century = (year / 100);
     return century.toInt();
  } else {
    century = ((year / 100).floor() + 1);
    return century.toInt();
  }
}

void main() {
  
  int test1 = 1705;
  int test2 = 1900;
  int test3 = 1601;
  int test4 = 2000;
  
  print(centuryDeterminant(test1));
  print(centuryDeterminant(test2));
  print(centuryDeterminant(test3));
  print(centuryDeterminant(test4));
  
}
