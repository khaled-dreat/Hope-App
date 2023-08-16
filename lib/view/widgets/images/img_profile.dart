part of '../../../utils/import/app_import.dart';

class ImgProfile extends StatelessWidget {
  const ImgProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Image(
      image: AssetImage(AppImage.profileImage),
      errorBuilder: (context, error, stackTrace) =>
          Image.asset(AppImage.accountProfile),
      loadingBuilder: (context, child, loadingProgress) {
        return loadingProgress == null
            ? child
            : const AppLoading(
                loading: LoadingType.image,
              );
      },
    ));
  }
}
