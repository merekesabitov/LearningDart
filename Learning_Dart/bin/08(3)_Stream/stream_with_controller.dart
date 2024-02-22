import 'dart:async';

void streamController() {
  final controller = StreamController<String>();
  final stream = controller.stream;
  final sink = controller.sink;

  stream.listen((data) {
    print('Получено: $data');
  }, onDone: () {
    print('Sink закрыт');
  }, onError: (Object error) {
    print(error);
  });

  sink.add('Apple');
  sink.add('Orange');
  sink.addError(Exception('Error'));
  sink.add('Cherry');
  
}

void main() {
  streamController();
}
