/*

Упражнение № 2: Цифры...цифры!

Определите количество десятичных цифр в целом числе без знака.
Например, 7 представляет собой одну цифру, 33 имеет 2 цифры, а 129955 имеет 6 цифр.
Условие: использовать length нельзя.

Входные данные:
2
555
236455

Результат:
1
3
6

*/

int a = 2;
int b = 555;
int c = 236455;

int quantityOfDigits(int number) {
  var count = 1;
  double num = number.toDouble();
  while (num >= 10) {
    num /= 10;
    count ++;
  }
  return count;
}

void main() {
  int test1 = quantityOfDigits(a);
  print(test1);

  int test2 = quantityOfDigits(b);
  print(test2);

  int test3 = quantityOfDigits(c);
  print(test3);
}