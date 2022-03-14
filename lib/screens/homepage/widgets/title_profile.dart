import 'package:groceryapp/gen/assets.gen.dart';
import 'package:groceryapp/util/barrer.dart';


class TitleProfile extends StatelessWidget
{
  const TitleProfile({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Head Text
        Text(KText.groceryText,
          style: TextStyle(
            fontFamily: KFonts.themeFont,
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),

        // Profile Picture
        Container(height: 4.5.h,
          width: 4.5.h,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: Assets.images.profilePic,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}