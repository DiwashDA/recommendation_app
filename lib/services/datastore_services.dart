import 'package:shared_preferences/shared_preferences.dart';

class DatastoreServices {
  savePreference(String object, id) async {
    print("while saving ${object.toString()}");
    SharedPreferences pref = await SharedPreferences.getInstance();
    print("SAVED : $object");
    await pref.setString(id, object);
  }

  getData(id) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? data = await pref.getString(id);
    // print("get data :  $data");
    return data;
  }

  deleteData(id) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.remove(id);
  }

  clearLocalStorage() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}
