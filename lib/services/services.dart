import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:recipe_books/model/model.dart';
import 'package:recipe_books/key/shared.dart' as shared;

part 'recipe_services.dart';
part 'auth_services.dart';
part 'user_services.dart';