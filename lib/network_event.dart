part of 'network_bloc.dart';

@immutable
abstract class NetworkEvent {}

class GetData extends NetworkEvent{
  final String? town;

  GetData({this.town});
}