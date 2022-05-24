import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speaking_analysis/src/business_logic/cubits/page_view_navigation_cubit.dart';
import 'package:speaking_analysis/src/business_logic/cubits/quy_cubit.dart';
import 'package:speaking_analysis/src/business_logic/cubits/speaking_part2_cubit.dart';
import 'package:speaking_analysis/src/business_logic/cubits/speaking_topics_quy1_cubit.dart';
import 'package:speaking_analysis/src/business_logic/cubits/speaking_topics_quy2_cubit.dart';
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
          create: (context) => SpeakingPart1Quy1TopicsCubit(),
        ),
        BlocProvider(
          create: (context) => QuyCubit(),
        ),
        BlocProvider(
          create: (context) => SpeakingPart1Quy2TopicsCubit(),
        ),
        BlocProvider(
          create: (context) => SpeakingPart2Cubit(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouterNavigation.generateRoute,
      ),
    );
  }
}
