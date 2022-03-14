import 'package:groceryapp/util/barrer.dart';
import 'package:groceryapp/screens/cartpage/widgets/cart_tile.dart';
import 'package:groceryapp/screens/cartpage/cart_data.dart';

class CartPage extends StatelessWidget
{
  const CartPage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 9.h,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          iconSize: 20.sp,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("My Cart",
        style: TextStyle(
          color: Colors.black,
          fontSize: 17.sp,
          fontWeight: FontWeight.bold,
          fontFamily: KFonts.themeFont,
        ),
        ),
        centerTitle: true,
      ),

      // Body
      body: ListView.separated(
        itemCount: cartData.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index)
        {
          return CartTile(
            cartData: cartData[index % cartData.length],
          );
        },
        separatorBuilder: (context, index)
        {
          return SizedBox(height: 3.h,);
        },
      ),

      // Checkout Button
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 12.h,
          width: 100.w,
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 2.2.h,
          ),
          child: ElevatedButton(
            onPressed: (){},
            child: const Text("Checkout"),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: KFonts.themeFont,
                fontSize: 14.sp,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),
          ),
        ),
      ),
    );
  }
}