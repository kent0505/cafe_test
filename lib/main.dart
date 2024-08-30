import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils.dart';
import 'core/config/router.dart';
import 'core/config/themes.dart';
import 'features/cafe/bloc/cafe_bloc.dart';
import 'features/inventory/bloc/inventory_bloc.dart';
import 'features/revenue/bloc/revenue_bloc.dart';

void main() async {
  await initHive();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CafeBloc()),
        BlocProvider(create: (context) => InventoryBloc()),
        BlocProvider(create: (context) => RevenueBloc()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: theme,
        routerConfig: routerConfig,
      ),
    );
  }
}
