import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speaking_analysis/src/business_logic/cubits/page_view_navigation_cubit.dart';
import 'package:speaking_analysis/src/business_logic/cubits/speaking_topics_cubit.dart';
import 'package:speaking_analysis/src/views/screens/page_view.dart';
import 'package:speaking_analysis/src/views/utils/circle_bar.dart';
import 'package:speaking_analysis/src/views/utils/router.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageViewNavigationCubit(),
        ),
        BlocProvider(
          create: (context) => SpeakingTopicsCubit(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouterNavigation.generateRoute,
        
      ),
    );
  }
}

