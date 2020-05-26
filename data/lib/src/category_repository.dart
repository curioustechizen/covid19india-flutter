import 'package:domain/domain.dart';
import 'package:rxdart/rxdart.dart';

class CategoryRepositoryImpl implements CategoryRepository {

  CategoryRepositoryImpl(Category initial): selectedCategory = BehaviorSubject.seeded(initial);

  @override
  BehaviorSubject<Category> selectedCategory;

  @override
  void setSelectedCategory(Category category) {
    selectedCategory.sink.add(category);
  }

}