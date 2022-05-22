import 'package:flutter_bloc/flutter_bloc.dart';



class PageViewNavigationCubit extends Cubit<int> {
  PageViewNavigationCubit() : super(0);

  void onPageChanged(int currentPageIndex){
     emit(currentPageIndex);
  }

}
