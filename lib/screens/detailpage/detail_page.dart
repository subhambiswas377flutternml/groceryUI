import 'package:groceryapp/util/barrer.dart';
import 'package:groceryapp/screens/cartpage/cart_page.dart';

enum moreVal
{
  cart,
}

class ProductDetailPage extends StatelessWidget
{
  final imageName;
  const ProductDetailPage({Key? key,
  required this.imageName,
  }):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 8.h,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          // More Icon Button
          PopupMenuButton(
            icon: const Icon(Icons.more_horiz,
            color: Colors.black,
            ),
            iconSize: 30.sp,
            onSelected: (value)
            {
              if(value==moreVal.cart)
                {
                  Navigator.of(context).push(
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const CartPage(),
                    )
                  );
                }
            },
            itemBuilder: (context)
            {
              return <PopupMenuItem>[
                const PopupMenuItem(
                  child: Text("Cart"),
                  value: moreVal.cart,
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Product Image
          imageName.image(
          height: 20.h,
            width: 100.w,
            fit: BoxFit.contain,
      ),
        ],
      ),
    );
  }
}