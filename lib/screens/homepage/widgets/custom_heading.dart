import 'package:groceryapp/util/barrer.dart';


class CustomHead extends StatelessWidget
{
  final String typeName;
  const CustomHead({Key? key,
  required this.typeName,
  }):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.5.w,
      vertical: 1.5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Type name
          Text(typeName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
          ),

          //  Show all
         TextButton(
           onPressed: (){},
           child: const Text("View More"),
           style: TextButton.styleFrom(
             primary: Colors.green,
             textStyle: TextStyle(
               fontSize: 12.sp,
               fontWeight: FontWeight.w600,
             )
           ),
         ),
        ],
      ),
    );
  }
}