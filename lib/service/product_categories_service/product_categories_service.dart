import '../../core_package.dart';

class ProductCategoriesService {
  getProduct() async {
    var response = await Dio().get(
      "https://capekngoding.com/demo/api/product_categories",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }

  add(Map item) async {
    await Dio().post(
      "https://capekngoding.com/demo/api/product_categories",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: item,
    );
  }

  update({required int id, required Map item}) async {
    await Dio().put(
      "https://capekngoding.com/demo/api/product_categories/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: item,
    );
  }

  delete(int id) async {
    await Dio().delete(
      "https://capekngoding.com/demo/api/product_categories/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
  }
}
