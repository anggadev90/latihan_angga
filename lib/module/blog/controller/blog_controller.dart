import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/blog_view.dart';

class BlogController extends State<BlogView> {
  static late BlogController instance;
  late BlogView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List blogs = [];
  getBlogs() async {
    blogs = await BlogService().getBlogs();
    setState(() {});
  }

  deleteProduct(int id) async {
    await BlogService().delete(id);
    getBlogs();
  }
}
