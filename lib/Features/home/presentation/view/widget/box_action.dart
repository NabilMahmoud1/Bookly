import 'package:bookly/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly/core/utils/widgets/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.bookmodel});

  final Bookmodel bookmodel;

  // فتح رابط الـ Preview القادم من Google Books API
  Future<void> openBook() async {
    final url = bookmodel.accessInfo?.webReaderLink;

    // لو مفيش لينك، منعملش حاجة
    if (url == null || url.isEmpty) {
      return;
    }

    final uri = Uri.parse(url);

    // فتح الرابط مباشرة باستخدام التطبيق الخارجي المناسب
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    // هل الكتاب عنده Preview؟
    final bool hasPreview =
        bookmodel.accessInfo?.webReaderLink != null &&
        bookmodel.accessInfo!.webReaderLink!.isNotEmpty;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          // السعر
          Expanded(
            child: CusttomBotton(
              backgroundcolor: Colors.white,

              text:
                  '${bookmodel.saleInfo?.listPrice?.amount ?? 0} ${bookmodel.saleInfo?.listPrice?.currencyCode ?? ''}',

              fontsize: 19,
              textcolor: Colors.black,

              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),

          // Free Preview
          Expanded(
            child: CusttomBotton(
              // لو فيه Preview نفتح الكتاب
              // لو مفيش الزرار مش هيعمل حاجة
              onpressed: hasPreview ? openBook : null,

              backgroundcolor: hasPreview ? Colors.deepOrange : Colors.grey,

              text: hasPreview ? 'Free Preview' : 'Book Not Available',

              fontsize: 19,
              textcolor: Colors.white,

              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
