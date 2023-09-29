import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:meta/meta.dart';

import 'net_model.dart';

part 'network_event.dart';

part 'network_state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  NetworkBloc() : super(NetworkInitial()) {
    on<NetworkEvent>((event, emit) {});
    on<GetData>(
      (event, emit) async {
        Box<NetModel> box = await Hive.box('no_inet_ad');
        Dio dio = Dio();
        try {
          bool result = await InternetConnection().hasInternetAccess;
          if (result == true) {
            var response = await dio.get(
                'http://api.weatherapi.com/v1/forecast.json?key=acb4a4de25aa41b784651422200510&q=${event.town ?? 'Tashkent'}&days=7');
            await box
                .put("key", NetModel.fromJson(response.data))
                .whenComplete(() {
              emit(NetworkSuccess(NetModel.fromJson(response.data)));
            });
          } else {
            // The internet is now connected

            emit(NetworkSuccess(box.get("key") as NetModel)?? NetworkLoading() );
            //emit(NetworkLoading());
            // The internet is now disconnected
          }
          //await listener.cancel();
        } on DioException catch (e) {
          if (e.response?.statusCode == 404) emit(NetworkError("Has not data"));
        }
      },
    );
  }
}
