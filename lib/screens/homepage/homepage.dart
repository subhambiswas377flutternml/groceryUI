import 'package:groceryapp/gen/assets.gen.dart';
import 'package:groceryapp/util/barrer.dart';
import 'package:groceryapp/screens/homepage/widgets/title_profile.dart';
import 'package:groceryapp/screens/homepage/widgets/search_filter.dart';
import 'package:groceryapp/screens/homepage/widgets/offer_tile.dart';
import 'package:groceryapp/screens/homepage/widgets/custom_heading.dart';
import 'package:groceryapp/screens/homepage/widgets/product_tile.dart';

class HomePage extends StatelessWidget
{
  const HomePage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap:(){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.3.w),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 2.h,),
                  // Grocery Text and Profile
                  const TitleProfile(),
                  SizedBox(height: 2.h,),
                  // Search and Filter
                  const SearchFilter(),
                  SizedBox(height: 2.h,),
                  // Offer tile
                  const OfferTile(),
                  // Fruits
                  const CustomHead(typeName: "Fruits",),
                  // Fruits list
                 SizedBox(
                   height: 30.h,
                   child: ListView.separated(
                     itemCount: 10,
                     shrinkWrap: true,
                     physics: const BouncingScrollPhysics(),
                     scrollDirection: Axis.horizontal,
                     itemBuilder: (context, index)
                     {
                       return ProductTile(
                         imageName: Assets.images.banana,
                         productName: "Banana",
                         price: "4.99",
                       );
                     },

                     separatorBuilder: (context, index)
                     {
                       return SizedBox(width: 1.w,);
                     },
                   ),
                 ),
                  SizedBox(height: 2.5.h),
                  // Vegetables
                  const CustomHead(typeName: "Vegetables",),
                  // Fruits list
                  SizedBox(
                    height: 30.h,
                    child: ListView.separated(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index)
                      {
                        return ProductTile(
                          imageName: Assets.images.avocado,
                          productName: "Avocado",
                          price: "2.49",
                        );
                      },

                      separatorBuilder: (context, index)
                      {
                        return SizedBox(width: 1.w,);
                      },
                    ),
                  ),

                  // Bottom Padding
                  SizedBox(height: 4.h,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}