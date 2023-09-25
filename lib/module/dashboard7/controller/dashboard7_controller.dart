import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/dashboard7_view.dart';

class Dashboard7Controller extends State<Dashboard7View> {
  static late Dashboard7Controller instance;
  late Dashboard7View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List menuList = [
    {
      "label": "Restaurant",
      "icon": Icons.restaurant,
    },
    {
      "label": "Hotel",
      "icon": Icons.hotel,
    },
    {
      "label": "Shopping",
      "icon": Icons.shopping_bag,
    },
    {
      "label": "Hospital",
      "icon": Icons.local_hospital,
    },
    {
      "label": "School",
      "icon": Icons.school,
    },
  ];

  List<Map<String, dynamic>> products = [
    {
      'id': 1,
      'product_name': 'Modern Sofa',
      'photo':
          "https://images.unsplash.com/photo-1578500494198-246f612d3b3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      'price': 500,
      'category': 'Living Room',
      'description': 'This modern sofa is perfect for your living room.',
      'discount_price': 450,
      'is_favorite': true,
      'location': 'Bali, Indonesia',
      'distance': 30,
    },
    {
      'id': 2,
      'product_name': 'Wooden Table',
      'photo':
          'https://images.unsplash.com/photo-1604074131665-7a4b13870ab4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      'price': 200,
      'category': 'Dining Room',
      'description': 'This wooden table is perfect for your dining room.',
      'discount_price': 180,
      'is_favorite': false,
      'location': 'Paris, Francis',
      'distance': 20,
    },
    {
      'id': 3,
      'product_name': 'Bed Frame',
      'photo':
          'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      'price': 300,
      'category': 'Bedroom',
      'description': 'This bed frame is perfect for your bedroom.',
      'discount_price': 270,
      'is_favorite': true,
      'location': 'Tokyo, Japan',
      'distance': 34,
    },
    {
      'id': 4,
      'product_name': 'Cabinet',
      'photo':
          'https://images.unsplash.com/photo-1601760561441-16420502c7e0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      'price': 400,
      'category': 'Storage',
      'description': 'This cabinet is perfect for your storage.',
      'discount_price': 360,
      'is_favorite': false,
      'location': 'Machu Picchu, Peru',
      'distance': 23,
    },
    {
      'id': 5,
      'product_name': 'Rug',
      'photo':
          'https://images.unsplash.com/photo-1575414003591-ece8d0416c7a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
      'price': 100,
      'category': 'Flooring',
      'description': 'This rug is perfect for your flooring.',
      'discount_price': 90,
      'is_favorite': true,
      'location': 'Maldives',
      'distance': 45,
    },
    {
      'id': 6,
      'product_name': 'Lamp',
      'photo':
          'https://images.unsplash.com/photo-1543198126-a8ad8e47fb22?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      'price': 50,
      'category': 'Lighting',
      'description': 'This lamp is perfect for your lighting.',
      'discount_price': 45,
      'is_favorite': false,
      'location': 'Sydney, Australia',
      'distance': 65,
    },
    {
      'id': 7,
      'product_name': 'Mirror',
      'photo':
          'https://images.unsplash.com/photo-1618220252344-8ec99ec624b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
      'price': 150,
      'category': 'Decoration',
      'description': 'This mirror is perfect for your decoration.',
      'discount_price': 135,
      'is_favorite': true,
      'location': 'New York, USA',
      'distance': 60,
    },
    {
      'id': 8,
      'product_name': 'Bookshelf',
      'photo':
          'https://images.unsplash.com/photo-1594620302200-9a762244a156?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1139&q=80',
      'price': 250,
      'category': 'Book Storage',
      'description': 'This bookshelf is perfect for your book storage.',
      'discount_price': 225,
      'is_favorite': false,
      'location': 'Rome, Italy',
      'distance': 50,
    },
    {
      'id': 9,
      'product_name': 'Chair',
      'photo':
          'https://images.unsplash.com/photo-1519947486511-46149fa0a254?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      'price': 150,
      'category': 'Seating',
      'description': 'This chair is perfect for your seating.',
      'discount_price': 135,
      'is_favorite': true,
      'location': 'Santorini, Greece',
      'distance': 42,
    },
    {
      'id': 10,
      'product_name': 'Cushion',
      'photo':
          'https://images.unsplash.com/photo-1579656381226-5fc0f0100c3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=684&q=80',
      'price': 50,
      'category': 'Comfort',
      'description': 'This cushion is perfect for your comfort.',
      'discount_price': 45,
      'is_favorite': false,
      'location': 'Cape Town, South Africa',
      'distance': 55,
    }
  ];

  bool isSlideUp = false;
  updateSlide(bool value) async {
    isSlideUp = value;
    setState(() {});
  }
}
