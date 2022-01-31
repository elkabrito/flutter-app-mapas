import 'package:flutter/material.dart';
import 'package:flutter_app_mapas/blocs/gps/gps_bloc.dart';
import 'package:flutter_app_mapas/screens/screens.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() { 
  runApp(
    MultiBlocProvider(
      providers: [
         BlocProvider(create: ( context ) => GpsBloc() )  
      ], child: const MapsApp(),     
    )
  );
}

class MapsApp extends StatelessWidget {
  const MapsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MapsApp',      
      home: GpsAccessScreen(),
    );
  }
}