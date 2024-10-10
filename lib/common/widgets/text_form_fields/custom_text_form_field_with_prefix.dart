import 'package:ma3ak_app/utils/constants/exports.dart';

class CustomTextFieldWithPrefix extends StatelessWidget {
  final TextEditingController controller;

  const CustomTextFieldWithPrefix({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFD4D4D4), // Hex color 'd4d4d4'
        borderRadius: BorderRadius.circular(20.r), // Rounded corners
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 10.w, right: 5.w), // Adjust padding if necessary
            child: Text(
              '+20',
              style: TextStyle(
                color: Colors.black, // Prefix text color
                fontSize: 16.sp, // Adjust the font size if necessary
              ),
            ),
          ),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 0,
            minHeight: 0,
          ),
          border: InputBorder.none, // No border
        ),
        style: const TextStyle(
          color: Colors.black, // Input text color
        ),
      ),
    );
  }
}


// import 'package:ma3ak_app/utils/constants/exports.dart';
//
// class CustomTextFieldWithPrefix extends StatelessWidget {
//   final TextEditingController controller;
//
//   const CustomTextFieldWithPrefix({super.key, required this.controller});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: const Color(0xFFD4D4D4), // Hex color 'd4d4d4'
//         borderRadius: BorderRadius.circular(20.r), // Rounded corners
//       ),
//       padding: EdgeInsets.symmetric(horizontal: 10.w),
//       child: TextFormField(
//         controller: controller,
//         decoration: const InputDecoration(
//           prefixText: '+20 ', // Prefix text
//           prefixStyle: TextStyle(
//             color: Colors.black, // Prefix text color
//           ),
//           border: InputBorder.none, // No border
//         ),
//         style: const TextStyle(
//           color: Colors.black, // Input text color
//         ),
//       ),
//     );
//   }
// }
