import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('Change : $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('Close : $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('onCreate : $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint('onError : $error');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint('onEvent : $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint('onTransition : $transition');
  }
}
