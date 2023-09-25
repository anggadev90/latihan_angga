import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/dashboard5_view.dart';

class Dashboard5Controller extends State<Dashboard5View> {
  static late Dashboard5Controller instance;
  late Dashboard5View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<String> categories = [
    "Nearby",
    "Trending",
    "New",
  ];

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    vendors.shuffle();
    setState(() {});
  }

  List<Map<String, dynamic>> vendors = [
    {
      "id": 1,
      "photo":
          "https://images.unsplash.com/photo-1585747860715-2ba37e788b70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1474&q=80",
      "vendor_name": "Jhonny's Cut",
      "price": 25,
      "category": "Men",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": false,
      "rating": 4.5,
    },
    {
      "id": 2,
      "photo":
          "https://images.unsplash.com/photo-1442595449221-4697415c7fe0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
      "vendor_name": "Messi's Cut",
      "price": 30,
      "category": "Men",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": false,
      "rating": 4.9,
    },
    {
      "id": 3,
      "photo":
          "https://images.unsplash.com/photo-1525721092877-3c3c93bfa6d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
      "vendor_name": "Ronaldo's Cut",
      "price": 27,
      "category": "Men",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": false,
      "rating": 4.6,
    },
    {
      "id": 4,
      "photo":
          "https://images.unsplash.com/photo-1598280601605-a42e1b3db108?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80",
      "vendor_name": "Alex's Cut",
      "price": 20,
      "category": "Men",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": false,
      "rating": 4.8,
    },
    {
      "id": 5,
      "photo":
          "https://plus.unsplash.com/premium_photo-1661542350224-8e3f095ce053?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
      "vendor_name": "Andrea's Cut",
      "price": 29,
      "category": "Men",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": false,
      "rating": 4.6,
    },
    {
      "id": 6,
      "photo":
          "https://images.unsplash.com/photo-1521590832167-7bcbfaa6381f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
      "vendor_name": "Simple Cut",
      "price": 35,
      "category": "Women",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "is_favorite": false,
      "rating": 4.7,
    },
  ];
}
