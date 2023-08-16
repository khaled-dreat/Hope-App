
part of '../../../utils/import/app_import.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // Search Bar
          margin: EdgeInsets.symmetric(vertical: 8.r),
          padding: EdgeInsets.only(left: 8.r),
          width: 270.w,
          height: 35.h,
          child: TextFormField(
            textAlign: TextAlign.end,
            decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.search,
                ),
                contentPadding: EdgeInsets.only(right: 10.r),
                hintStyle: TextStyle(fontSize: 13.sp),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)))),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.reorder_sharp),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.filter_alt,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
