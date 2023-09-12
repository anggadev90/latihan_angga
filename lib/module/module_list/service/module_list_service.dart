import 'package:hyper_ui/core.dart';

class MouduleListService {
  List menuItems = [
    {
      "label": "Customer",
      "view": CustomerListView(),
    },
    {
      "label": "Product",
      "view": ProductListView(),
    },
    {
      "label": "Supplier",
      "view": SuppliersListView(),
    },
    {
      "label": "Users",
      "view": UsersView(),
    },
    {
      "label": "Product_categories",
      "view": ProductCategoriesListView(),
    },
    {
      "label": "Customer",
      "view": CustomerListView(),
    },
    {
      "label": "Voucher",
      "view": VouchersListView(),
    },
    {
      "label": "Banner_image",
      "view": BannerImagesListView(),
    },
    {
      "label": "Dashboard",
      "view": DashboardView(),
    },
    {
      "label": "Cart_list",
      "view": CartListView(),
    },
    {
      "label": "Cart_grid",
      "view": CartGridView(),
    },
    {
      "label": "Profile",
      "view": ProfileView(),
    },
    {
      "label": "Edit_profile",
      "view": EditProfileView(),
    },
    {
      "label": "Blog",
      "view": BlogView(),
    },
  ];
}
