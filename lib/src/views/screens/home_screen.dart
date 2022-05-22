import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speaking_analysis/src/business_logic/cubits/page_view_navigation_cubit.dart';
import 'package:speaking_analysis/src/views/screens/page_view.dart';
import 'package:speaking_analysis/src/views/utils/circle_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String homeScreenRoute = '/home_screen';
  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Speaking Analysis',
            style: TextStyle(color: Colors.black, fontSize: 21.0)),
        centerTitle: true,
        elevation: 0,
      ),
      body: SizedBox(
        child: Stack(
          children: <Widget>[
            const PageViewWidget(),
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 55),
                    child: BlocBuilder<PageViewNavigationCubit, int>(
                      builder: (context, currentPage) {
                        return Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            for (int i = 0; i < 7; i++)
                              (i == currentPage
                                  ? const CircleBar(isActive: true)
                                  : const CircleBar(isActive: false))
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
