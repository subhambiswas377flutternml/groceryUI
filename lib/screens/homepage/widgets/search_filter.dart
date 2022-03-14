import 'package:groceryapp/util/barrer.dart';


class SearchFilter extends StatelessWidget
{
  const SearchFilter({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Search Panel
        Container(
          height: 6.5.h,
          width: 75.w,
          padding: EdgeInsets.symmetric(horizontal: 1.2.w),
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            children: [
              // Search Icon
              GestureDetector(
                onTap:(){},
                child: Icon(Icons.search,
                size: 20.sp,
                  color: Colors.black54,
                ),
              ),
              SizedBox(width: 2.w,),
              // Search Field
              Expanded(child: TextFormField(
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: KFonts.themeFont,
                ),
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: KFonts.themeFont,
                  ),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              )),
            ],
          ),
        ),

        // Filter
        SizedBox(
          height: 6.5.h,
          width: 14.w,
          child: ElevatedButton(
            onPressed: (){},
            child: const Icon(Icons.filter_alt),
            style: ElevatedButton.styleFrom(
              primary: Colors.black12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),
          ),
        ),
      ],
    );
  }
}