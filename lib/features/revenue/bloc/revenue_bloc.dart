import 'package:cafe_test/core/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/models/revenue.dart';

part 'revenue_event.dart';
part 'revenue_state.dart';

class RevenueBloc extends Bloc<RevenueEvent, RevenueState> {
  RevenueBloc() : super(RevenueInitial()) {
    on<GetRevenuesEvent>((event, emit) async {
      if (revenuesList.isEmpty) {
        await getRevenues();
        emit(RevenueLoadedState(revenues: revenuesList));
      } else {
        emit(RevenueLoadedState(revenues: revenuesList));
      }
    });

    on<AddRevenueEvent>((event, emit) async {
      revenuesList.add(event.revenue);
      await updateRevenues();
      emit(RevenueLoadedState(revenues: revenuesList));
    });

    on<EditRevenueEvent>((event, emit) async {
      for (Revenue revenue in revenuesList) {
        if (revenue.id == event.revenue.id) {
          revenue.price = event.revenue.price;
          revenue.category = event.revenue.category;
          revenue.date = event.revenue.date;
          revenue.revenue = event.revenue.revenue;
        }
      }
      await updateRevenues();
      emit(RevenueLoadedState(revenues: revenuesList));
    });

    on<DeleteRevenueEvent>((event, emit) async {
      revenuesList.removeWhere((element) => element.id == event.id);
      await updateRevenues();
      emit(RevenueLoadedState(revenues: revenuesList));
    });
  }
}
