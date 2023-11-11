/*
Упражнение № 2: Объединения

Учитывая два целочисленных набора a и b, напишите программу для вычисления
набора элементов, принадлежащих либо a, либо b, но не обоим.

Например, учитывая следующее:

const a = {5, 7};
const b = {7, 10};

Программа должна напечатать {5, 10}.

Затем вычислите и выведите сумму всех элементов полученного набора.
*/

const a = {5, 7};
const b = {7, 10};

const c = {'one', 'two'};
const d = {'one', 'three', 'four'};

void unionOfDifference<T> (Set<T> a, Set<T> b) => print((a.difference(b)).union(b.difference(a)));

void main() {
  unionOfDifference(a,b);
  unionOfDifference(c,d);
}
