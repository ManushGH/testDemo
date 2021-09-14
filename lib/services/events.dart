import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_admin_tut/helpers/costants.dart';
import 'package:ecommerce_admin_tut/models/eventList.dart';

class EventServices {
  String collection = "orders";

  Future<List<EventsModel>> getAllEvents() async =>
      firebaseFiretore.collection(collection).get().then((result) {
        List<EventsModel> orders = [];
        for (DocumentSnapshot order in result.docs) {
          orders.add(EventsModel.fromSnapshot(order));
        }
        return orders;
      });
}
