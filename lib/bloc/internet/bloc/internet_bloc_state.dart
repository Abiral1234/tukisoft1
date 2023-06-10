part of 'internet_bloc_bloc.dart';

abstract class InternetBlocState extends Equatable {
  const InternetBlocState();

  @override
  List<Object> get props => [];
}

class InternetInitialState extends InternetBlocState {}

class InternetLostState extends InternetBlocState {}

class InternetGainedState extends InternetBlocState {}
