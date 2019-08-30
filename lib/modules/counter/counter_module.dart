import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:estudo_bloc_pattern/modules/counter/counter_page.dart';
import 'package:flutter/material.dart';

import 'blocs/counter_bloc.dart';

class CounterModule extends ModuleWidget {
  
  @override
  List<Bloc<BlocBase>> get blocs => [
    Bloc((_) => CounterBloc()),   
  ];

  @override
  List<Dependency> get dependencies => [

  ];

  @override
  Widget get view => CounterPage();


  //shortcut to pick up dependency injections from this module
  static Inject get to => Inject<CounterModule>.of();

}
