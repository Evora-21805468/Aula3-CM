import "dart:async";
import 'package:expressions/expressions.dart';
import 'package:f_calculator/data/datasource.dart';

class Calculator {

  String _content;

  StreamController _controller = StreamController();

    Sink get _input => _controller.sink;

    Stream get output => _controller.stream;

    void onReceiveSymbol(symbol) {
      _content = _content == null ? symbol : _content += symbol;
      _input.add(_content);
    }

    void onEquals(){
      final expression = Expression.parse(_content);
      DataSource.getInstance().insert(_content);
      _content = ExpressionEvaluator().eval(expression, null).toString();
      _input.add(_content);

    }

    void onClear(){
      if(_content.length == 0){
        _content = _content.substring(0,0);
        _input.add(_content);
      } else {
        _content = _content.substring(0,_content.length-1);
        _input.add(_content);
      }
    }

    void dispose() => _controller.close();
}