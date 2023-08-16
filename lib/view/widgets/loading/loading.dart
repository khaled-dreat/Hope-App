part of '../../../utils/import/app_import.dart';

enum LoadingType {
  image,
  // TODO: web,
  // TODO:send,
  page,
  profile
}
// TODO:Theme,
// TODO:Size,

class AppLoading extends StatefulWidget {
  const AppLoading({super.key, this.loading});
  final LoadingType? loading;
  @override
  State<AppLoading> createState() => _AppLoadingState();
}

class _AppLoadingState extends State<AppLoading> {
  @override
  Widget build(BuildContext context) {
    switch (widget.loading ?? LoadingType.image) {
      // image
      case LoadingType.image:
        return LoadingAnimationWidget.fourRotatingDots(
            color: Colors.blue, size: 50);
      // page

      case LoadingType.page:
        return LoadingAnimationWidget.inkDrop(color: Colors.blue, size: 50);
      // profile

      case LoadingType.profile:
        return LoadingAnimationWidget.discreteCircle(
            color: Colors.blue, size: 50);
    }
  }
}
