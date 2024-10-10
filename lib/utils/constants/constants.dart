import 'package:ma3ak_app/features/category/models/product.dart';
import 'package:ma3ak_app/utils/constants/exports.dart';

class AppConstants {

  static final List<Package> packages = [
    Package(
      title: 'Silver Package',
      imageUrl: 'https://via.placeholder.com/150',
      // Replace with your image URL
      rating: 5.0,
      reviews: 770000,
      distance: 5.0,
    ),
    Package(
      title: 'Golden Package',
      imageUrl: 'https://via.placeholder.com/150',
      // Replace with your image URL
      rating: 4.5,
      reviews: 770000,
      distance: 7.0,
    ),
    // Add more packages as needed
  ];


  /// Define the product details
  static final List<Product> products = [
    Product(
      name: 'English Bread',
      imageUrl: 'https://via.placeholder.com/150',
      // Replace with actual image URL
      price: '10 EGP',
    ),
    Product(
      name: 'Egyptian Bread',
      imageUrl: 'https://via.placeholder.com/150',
      // Replace with actual image URL
      price: '15 EGP',
    ),
    Product(
      name: 'English Bread',
      imageUrl: 'https://via.placeholder.com/150',
      // Replace with actual image URL
      price: '1.5 EGP',
      isBestSeller: true, // Mark as Best Seller
    ),
    Product(
      name: 'Egyptian Bread',
      imageUrl: 'https://via.placeholder.com/150',
      // Replace with actual image URL
      price: '1 EGP',
    ),
  ];
}