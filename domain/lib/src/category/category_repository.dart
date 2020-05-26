import 'package:domain/domain.dart';
import 'package:rxdart/rxdart.dart';

abstract class CategoryRepository {
  void setSelectedCategory(Category category);
  BehaviorSubject<Category> get selectedCategory;
}