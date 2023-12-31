/* 
Упражнение № 3 
 
Вам дана строка «abc» и предполагая, что каждая буква в строке имеет значение, равное ее позиции в алфавите, 
то наша строка будет иметь значение 1 + 2 + 3 = 6. Это означает, что: a = 1, b = 2, c = 3 .... z = 26. 
 
Вам будет предоставлен список строк, и ваша задача будет вернуть значения строк, 
умноженные на позицию этой строки в списке. Позиция начинается с 1. 
 
Например: wordValue ["abc", "abc abc"] должно вернуть [6, 24] или [6 * 1, 12 * 2]. 
Обратите внимание, что пробелы игнорируются. «abc» имеет значение 6, а «abc abc» - значение 12. 
Теперь значение в позиции 1 умножается на 1, а значение в позиции 2 умножается на 2. 
Ввод будет содержать только строчные буквы и пробелы. 
 
Входные данные: 
Дан список строк - ["dart", "abc", "good luck"] 
 
Выходные данные: 
Вы должны получить список со значениями – [43, 12, 264] 
*/ 
 
List<int> wordValue(List<String> list) { 
   
  List<int> convertedList = []; 
  int sumOfString = 0; 
  int position = 0; 
 
  for (final i in list) { 
    position ++; 
    final filteredString = i.replaceAll(' ', ''); 
    final unicode = filteredString.codeUnits; 
    sumOfString = unicode.fold(0, (a, b) => a + b) - (96 * unicode.length); 
    convertedList.add(sumOfString * position); 
  } 
  return convertedList; 
} 
 
List<String> list = ['dart', 'abc', 'good luck', '', ' ']; 
 
void main() { 
  print(wordValue(list)); 
}