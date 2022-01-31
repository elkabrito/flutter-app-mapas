import 'package:flutter/material.dart';
import 'package:flutter_app_mapas/blocs/gps/gps_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GpsAccessScreen extends StatelessWidget {
  const GpsAccessScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<GpsBloc, GpsState>(
          builder: (context, state) {

             return  !state.isGpsEnabled
             ? const _EnableGpsMessage()
             : const _AccessButton();
          },
        )               
      ),
    );
  }
}

class _AccessButton extends StatelessWidget {
  const _AccessButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Es necesario el acceso a GPS'),
        MaterialButton(
          child: const Text('Solicitar acceso', style: TextStyle(color: Colors.white),),
          color: Colors.black,
          shape: const StadiumBorder(),
          elevation: 0,
          splashColor: Colors.transparent,
          onPressed: (){
             // TODO: aqui se va hacer algo bien chidori
          })
      ],
    );
  }
}

class _EnableGpsMessage extends StatelessWidget {
  const _EnableGpsMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Debe habilitar el GPS',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
    );
  }
}