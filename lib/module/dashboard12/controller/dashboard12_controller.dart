import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/dashboard12_view.dart';

class Dashboard12Controller extends State<Dashboard12View> {
  static late Dashboard12Controller instance;
  late Dashboard12View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> movie = [
    {
      'id': 1,
      'movie_name': 'Transformers',
      'photo':
          "https://images.unsplash.com/photo-1618945524163-32451704cbb8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
      'rating': 4,
      'genre': "Action, Adventure",
      "duration": "2h 2min",
    },
    {
      'id': 2,
      'movie_name': 'Spiderman',
      'photo':
          'https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
      'rating': 5,
      'genre': "Action, Adventure",
      "duration": "2h 30min",
    },
    {
      'id': 3,
      'movie_name': 'Batman',
      'photo':
          'https://images.unsplash.com/photo-1509347528160-9a9e33742cdb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
      'rating': 3,
      'genre': "Action, Adventure",
      "duration": "2h 40min",
    },
    {
      'id': 4,
      'movie_name': 'Chuky',
      'photo':
          'https://images.unsplash.com/photo-1613679074971-91fc27180061?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
      'rating': 4,
      'genre': "Horror",
      "duration": "2h 20min",
    },
    {
      'id': 5,
      'movie_name': 'Aquaman',
      'photo':
          'https://images.unsplash.com/photo-1676491167770-bce474fe0024?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1528&q=80',
      'rating': 3,
      'genre': "Action, Adventure",
      "duration": "2h 10min",
    },
  ];
}
