import 'package:flutter_bloc/flutter_bloc.dart';

class QuyCubit extends Cubit<String> {
  QuyCubit() : super('');


  void chooseQuy(String quy) {
    emit(quy);
  }
}
