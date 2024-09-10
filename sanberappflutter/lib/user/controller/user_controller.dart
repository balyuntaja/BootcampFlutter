import 'package:get/get.dart';
import 'package:sanberappflutter/user/model/user_model.dart';
import 'package:sanberappflutter/user/service/user_service.dart';

class UserController extends GetxController {
  var users = <UserModel>[].obs; // Rx list of users
  var isLoading = false.obs; // Rx boolean for loading state
  var errorMessage = ''.obs; // Rx string for error handling

  @override
  void onInit() {
    super.onInit();
    fetchDataUser();
  }

  Future<void> fetchDataUser() async {
    try {
      isLoading(true); // Set loading to true
      var fetchedUsers = await UserService().fetchUser();
      users.value =
          fetchedUsers; // Assign fetched data to observable users list
    } catch (e) {
      errorMessage.value = "Failed to load users. Please try again.";
      print(e);
    } finally {
      isLoading(false); // Set loading to false
    }
  }
}
