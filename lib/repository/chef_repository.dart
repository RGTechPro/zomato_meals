import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/chef_model.dart';


class ChefRepository{
  Future<ChefListModel> fetchChefDataList() async {
  late ChefListModel chefListModel;
  try {
    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('chefs').get();

    List<Map<String, dynamic>> chefListJson =
        snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
    chefListModel = ChefListModel.fromJson(chefListJson);

    return chefListModel;
  } catch (error) {
    print('Error fetching chef data: $error');
  }
  return chefListModel;
}

}


