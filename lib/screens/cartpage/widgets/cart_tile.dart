import 'package:groceryapp/gen/assets.gen.dart';
import 'package:groceryapp/util/barrer.dart';
import 'package:groceryapp/screens/cartpage/cart_model.dart';

class CartTile extends StatelessWidget
{
  final CartModel cartData;

  const CartTile({Key? key,
  required this.cartData,
  }):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 15.h,
      width: 100.w,
      margin: EdgeInsets.symmetric(horizontal: 2.5.w),
      child: Card(
        elevation: 5,
        shadowColor: Colors.blueGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: LayoutBuilder(
          builder: (context, constraint)
          {
            return Row(
              children: [
                SizedBox(width: constraint.maxWidth*0.02,),
                // Image
                cartData.imageName.image(
                  height: constraint.maxHeight,
                  width: constraint.maxWidth*0.3,
                  fit: BoxFit.contain,
                ),
                SizedBox(width: constraint.maxWidth*0.04,),
                // Product details
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Name
                    Text(cartData.productName,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: KFonts.themeFont,
                      fontWeight: FontWeight.bold,
                    ),
                    ),

                    // Type
                    Text(cartData.categoryName,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: KFonts.themeFont,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                      ),
                    ),

                    // Quantity
                    Container(
                      height: constraint.maxHeight*0.28,
                      width: constraint.maxWidth*0.2,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: KColors.lightGreen,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(cartData.quantity,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black45,
                        fontSize: 10.sp,
                        fontFamily: KFonts.themeFont,
                      ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                // Cross Button and Price
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Cross Button
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: (){},
                    ),

                    // Price
                    Text("\$${cartData.price}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                    ),
                    ),
                  ],
                ),

                SizedBox(width: constraint.maxWidth*0.07,),
              ],
            );
          },
        ),
      ),
    );
  }
}