
Iterable<int> syncGenerator() sync* {
  for (int i = 0; i <= 100; i++) {
    yield i;
  }
}

Stream<int> asyncGenerator() async* {
  for (int i = 0; i <= 100; i++) {
    yield i;
  }
}

void main() {
//sync generator
  final result = syncGenerator();
  print(result);

//async generator
  final result2 = asyncGenerator();
  result2.listen((event) {
    print(event);
  });
}