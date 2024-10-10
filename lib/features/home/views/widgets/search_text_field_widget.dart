import 'package:ma3ak_app/utils/constants/exports.dart';

class SearchTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;

  const SearchTextFieldWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(12), // Use adaptive padding as needed
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          child: const Icon(Icons.apps, color: Colors.black),
        ),
        const SizedBox(width: 10), // Spacing between the icon and text field
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20), // Rounded corners
            ),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Search here ...',
                hintStyle: const TextStyle(color: Colors.black38),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 22.h, // Horizontal padding to center text properly
                  vertical: 18.w,    // Vertical padding to ensure center alignment
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset(
                    AppImages.searchIconNotSelected,
                    fit: BoxFit.scaleDown,
                  ), // Search icon
                ),
              ),
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}