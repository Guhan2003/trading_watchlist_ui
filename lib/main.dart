import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trading/business/bloc/search_bloc.dart';
import 'package:trading/presentation/main_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=> SearchBloc())
      ],
      child: MaterialApp(home: MainPage(), debugShowCheckedModeBanner: false),
    );
  }
}
