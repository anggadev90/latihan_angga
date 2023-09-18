import '../../core_package.dart';

class AuthService {
  Future login({required String email, required String password}) async {
    try {
      var response =
          await Dio().post("https://capekngoding.com/demo/api/auth/login",
              options: Options(
                headers: {
                  "Content-Type": "application/json",
                },
              ),
              data: {
            "email": email,
            "password": password,
          });
      Map obj = response.data;
      return obj["data"];
    } on Exception catch (err) {
      throw (err);
    }
  }
}
