import 'dart:async';

void main() {

  StreamSubscription<int>? subscription;
  
  final stream = Stream.periodic(Duration(seconds: 1), (tick) => tick);

  print('Поток запущен');
  subscription = stream.listen((data) {
    print(data);
  });

  Future.delayed(Duration(seconds: 3), () {
    subscription?.isPaused;
    print('Поток приостановлен');
  });

  Future.delayed(Duration(seconds: 5), () {
    subscription?.resume();
    print('Поток возобновлен');
  });

  Future.delayed(Duration(seconds: 8), () {
    subscription?.cancel();
    print('Отписка от потока');
  });
}
