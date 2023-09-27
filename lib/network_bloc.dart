import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:meta/meta.dart';

import 'net_model.dart';

part 'network_event.dart';

part 'network_state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  NetworkBloc() : super(NetworkInitial())  {
    on<NetworkEvent>((event, emit) {});
    on<GetData>(
      (event, emit) async {
        Box<NetModel> box = await Hive.box('no_inet_ad');
        Dio dio = Dio();
        try {
          var response = await dio.get(
              'http://api.weatherapi.com/v1/forecast.json?key=acb4a4de25aa41b784651422200510&q=${event.town ?? 'Tashkent'}&days=7');

          final listener = InternetConnection()
              .onStatusChange
              .listen((InternetStatus status) async {
            switch (status) {
              case InternetStatus.connected:
                await box
                    .put("key", NetModel.fromJson(response.data))
                    .whenComplete(() {
                  emit(NetworkSuccess(NetModel.fromJson(response.data)));
                });
                // The internet is now connected
                break;
              case InternetStatus.disconnected:
                emit(NetworkSuccess(box.get("key") as NetModel));
                // The internet is now disconnected
                break;
            }
          });
        } on DioException catch (e) {
          if (e.response?.statusCode == 404) emit(NetworkError("Has not data"));
        }
      },
    );
  }
}
