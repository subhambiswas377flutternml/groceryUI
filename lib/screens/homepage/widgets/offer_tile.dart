import 'package:groceryapp/gen/assets.gen.dart';
import 'package:groceryapp/util/barrer.dart';


class OfferTile extends StatelessWidget
{
  const OfferTile({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 20.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: KColors.lightGreen,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          // Image
          Positioned(
            top: 10.h,
            left: 55.w,
            child: Assets.images.cabbage.image(
              height: 10.h,
              fit: BoxFit.contain,
            ),
          ),

          // Offer Text
          Positioned(
            top: 6.h,
            left: 7.w,
            child: Text(
              "Get Up To",
              style: TextStyle(
                fontFamily: KFonts.themeFont,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),

          // Percentage
          Positioned(
            top: 10.h,
            left: 7.w,
            child: Text(
              "10% Off",
              style: TextStyle(
                fontFamily: KFonts.themeFont,
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}