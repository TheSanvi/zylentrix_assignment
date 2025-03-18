import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/post_model.dart';

class PostProvider with ChangeNotifier {
  List<PostModel> _posts = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<PostModel> get posts => _posts;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  Future<void> fetchPosts() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

      if (response.statusCode == 200) {
        List<dynamic> jsonData = json.decode(response.body);
        _posts = jsonData.map((post) => PostModel.fromJson(post)).toList();
      } else {
        _errorMessage = "Failed to load data! Error: ${response.statusCode}";
      }
    } catch (e) {
      _errorMessage = "Something went wrong! Check your internet connection.";
    }

    _isLoading = false;
    notifyListeners();
  }
}
