part of 'revenue_bloc.dart';

abstract class RevenueState {}

class RevenueInitial extends RevenueState {}

class RevenueLoadedState extends RevenueState {
  final List<Revenue> revenues;
  RevenueLoadedState({required this.revenues});
}
