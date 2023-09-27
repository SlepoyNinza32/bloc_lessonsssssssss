part of 'network_bloc.dart';

@immutable
abstract class NetworkState {}

class NetworkInitial extends NetworkState {}
class NetworkLoading extends NetworkState {}
class NetworkError extends NetworkState {
  final String message;

  NetworkError(this.message);
}
class NetworkSuccess extends NetworkState {
  final NetModel model;

  NetworkSuccess(this.model);
}
