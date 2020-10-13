import 'dart:async';
import 'package:Firebase_Project/Counter_event.dart';

class CounterBlock {
  int _counter = 0;

  final _counterStateController = StreamController<int>();

  //StreamSink<int> get _inCounter => _counterStateController.sink;

  Stream<int> get counter => _counterStateController.stream;

  final _countEventController = StreamController<Event>();

  Sink<Event> get counterEventSink => _countEventController.sink;

  CounterBlock() {
    _countEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(Event event) {
    if (event is IncrementEvent)
      _counter++;
    else
      _counter--;

    _counterStateController.sink.add(_counter);
  }

  void dispose() {
    _counterStateController.close();
    _countEventController.close();
  }
}
