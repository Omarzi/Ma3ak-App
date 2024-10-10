import 'package:ma3ak_app/features/home/models/category.dart';
import 'package:ma3ak_app/features/home/views/widgets/category_tile.dart';
import 'package:ma3ak_app/utils/constants/exports.dart';

class CategoriesWidgets extends StatelessWidget {
  CategoriesWidgets({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(
        name: 'Electricity',
        icon: Icons.electrical_services,
        color: Colors.lightBlue),
    CategoryModel(
        name: 'Cleaning',
        icon: Icons.cleaning_services,
        color: Colors.orangeAccent),
    CategoryModel(name: 'Plants', icon: Icons.eco, color: Colors.green),
    CategoryModel(
        name: 'Finishings', icon: Icons.weekend, color: Colors.amberAccent),
    CategoryModel(
        name: 'Plumbing', icon: Icons.plumbing, color: Colors.blueAccent),
    CategoryModel(
        name: 'Pharmacy',
        icon: Icons.local_pharmacy,
        color: Colors.purpleAccent),
    CategoryModel(
        name: 'Grocery',
        icon: Icons.local_grocery_store,
        color: Colors.redAccent),
    CategoryModel(
        name: 'See More', icon: Icons.apps, color: Colors.indigoAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // Number of columns
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 8.h,
        childAspectRatio: .7,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return CategoryTile(
          category: category,
          onTap: () => context.pushNamed(
            RoutesName.anySpecificCategoryRoute,
            arguments: {
              'categoryName': category.name,
              'categoryColor': category.color,
            },
          ),
        );
      },
    );
  }
}
