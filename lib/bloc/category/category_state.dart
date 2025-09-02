import 'package:dartz/dartz.dart';

import '../../data/model/category.dart';

abstract class CategoryState {}

class CategoryInitState extends CategoryState {}

class CategoryResponseState extends CategoryState {
  Either<String, List<Category>> response;

  CategoryResponseState(this.response);
}

class CategoryLoadingState extends CategoryState{}