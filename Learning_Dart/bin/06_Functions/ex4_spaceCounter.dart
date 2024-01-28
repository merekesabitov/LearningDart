/*
Напишите расширение функционала такого типа как String,
сделайте метод, который будет выводить число пробелов в этой строке
*/

extension SpaceCounter on String {
  String countSpaces() {
    int spaceCount = 0;

    for (int i = 0; i < this.length; i++) {
      if (this[i] == ' ') {
        spaceCount++;
      }
    }

    return spaceCount.toString();
  }
}

String a = 'a b c d';

void main() {
  print(a.countSpaces());
}
