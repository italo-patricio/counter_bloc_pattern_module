import 'package:flutter/material.dart';

import 'blocs/counter_bloc.dart';
import 'counter_module.dart';

class CounterPage extends StatefulWidget {
  CounterPage({Key key}) : super(key: key);


  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  CounterBloc _counterBloc;

  @override
  void initState() {
    // _counterBloc = BlocProvider.getBloc<CounterBloc>();
    _counterBloc = CounterModule.to.bloc<CounterBloc>();

    super.initState();
  }

  @override
  void dispose() {
    _counterBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('criando o widget..');
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter bloc_pattern'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
              stream: _counterBloc.counterStream,  
              builder: ( _, AsyncSnapshot<int> snapshot) {
              return Text(
                '${snapshot.data}',
                style: Theme.of(context).textTheme.display1,
              );
            })
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _counterBloc.incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _counterBloc.decrementCounter,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
