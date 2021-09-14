import 'package:ecommerce_admin_tut/models/eventList.dart';
import 'package:ecommerce_admin_tut/services/events.dart';
import 'package:flutter/material.dart';

enum DisplayedPage {
  HOME,
  ACTIVITIES,
  EVENTS,
  USERS,
  CLASSLISTS,
  PAYMENTS,
  JOBS
}

class AppProvider with ChangeNotifier {
  DisplayedPage currentPage;
  EventServices eventServices = EventServices();
  EventsModel _eventsModel;
  double revenue = 0;

  AppProvider.init() {
    _getRevenue();
    changeCurrentPage(DisplayedPage.HOME);
  }

  changeCurrentPage(DisplayedPage newPage) {
    currentPage = newPage;
    notifyListeners();
  }

  void _getRevenue() async {
    await eventServices.getAllEvents().then((orders) {
      for (EventsModel order in orders) {
        revenue = revenue + order.total;
        print("======= TOTAL REVENUE: ${revenue.toString()}");
        print("======= TOTAL REVENUE: ${revenue.toString()}");
        print("======= TOTAL REVENUE: ${revenue.toString()}");
      }
      notifyListeners();
    });
  }
}
