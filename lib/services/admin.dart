import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_admin_tut/helpers/costants.dart';
import 'package:ecommerce_admin_tut/models/admin.dart';

class AdminServices {
  String collection = "admins";

  void createAdmin({
    String id,
    String name,
    String email,
  }) {
    firebaseFiretore.collection(collection).doc(id).set({
      "name": name,
      "id": id,
      "email": email,
    });
  }

  void updateAdminData(Map<String, dynamic> values) {
    firebaseFiretore.collection(collection).doc(values['id']).update(values);
  }

  Future<AdminModel> getAdminById(String id) =>
      firebaseFiretore.collection(collection).doc(id).get().then((doc) {
        return AdminModel.fromSnapshot(doc);
      });

  Future<List<AdminModel>> getAllAdmins() async =>
      firebaseFiretore.collection(collection).get().then((result) {
        List<AdminModel> adminsL = [];
        for (DocumentSnapshot admins in result.docs) {
          adminsL.add(AdminModel.fromSnapshot(admins));
        }
        return adminsL;
      });
}
