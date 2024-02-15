import 'dart:async';

void main() async {
  //await readStreamAsyncForLoop();
  //readStream();
}

Future<void> readStreamAsyncForLoop() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  try {
    await for (final data in stream) {
      print('Получено: $data');
      //throw Exception('ошибка');
    }
  } on Exception catch (error) {
    print(error);
  } finally {
    print('Все события завершены');
  }
}

void readStream() {
  StreamSubscription<int>? subscription;

  final stream = Stream.periodic(Duration(seconds: 1), (tick) {
    if (tick == 4) throw Exception('Исключение в событии');
    return tick;
  }).take(5);

  print('Поток запущен');

  subscription = stream.listen((data) => print('Получено: $data'),
      onDone: () => print('Все события завершены'),
      onError: (Object error) => print(error),
      cancelOnError: true);

  // Future.delayed(Duration(seconds: 3), () {
  //   subscription?.isPaused;
  //   print('Поток приостановлен');
  // });

  // Future.delayed(Duration(seconds: 5), () {
  //   subscription?.resume();
  //   print('Поток возобновлен');
  // });

  Future.delayed(Duration(seconds: 8), () {
    subscription?.cancel();
    print('Отписка от потока');
  });
}
