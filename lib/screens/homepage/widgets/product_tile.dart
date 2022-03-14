import 'package:groceryapp/util/barrer.dart';
import 'package:groceryapp/screens/detailpage/detail_page.dart';

class ProductTile extends StatelessWidget
{
  final imageName;
  final String productName;
  final String price;

  const ProductTile({Key? key,
  required this.imageName,
    required this.price,
    required this.productName,
  }):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          PageTransition(
            type: PageTransitionType.fade,
            child: ProductDetailPage(
              imageName: imageName,
            ),
          ),
        );
      },
      child: SizedBox(
        height: 30.h,
        width: 50.w,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              // Image
              Positioned(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: imageName.image(
                      height: 12.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              // Name
              Positioned(
                top: 14.h,
                left: 4.w,
                child: Text(productName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                ),
                ),
              ),

              // Type Name
              Positioned(
                top: 17.h,
                left: 4.w,
                child: Text("Organic",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: Colors.black54,
                  ),
                ),
              ),

              // Price
              Positioned(
                top: 22.h,
                left: 5.w,
                child: Text("\$$price",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),

              // Addition Button
              Positioned(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.h,
                    right: 2.w,
                    ),
                    child: SizedBox(
                      height: 8.h,
                      width: 15.w,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: const Icon(Icons.add),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}