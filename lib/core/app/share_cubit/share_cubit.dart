import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';
import 'package:store_app/core/app/share_cubit/share_state.dart';
import 'package:store_app/core/service/dynamic_link/dynamic_link.dart';

class ShareCubit extends Cubit<ShareState> {
  ShareCubit() : super(const ShareState.initial());

  Future<void> sendDynamicLinkProduct(
      {required int productId,
      required String title,
      required String imageUrl}) async {
    emit(ShareState.loading(productId: productId));
    await DynamicLink()
        .generateProductLink(
            productId: productId, title: title, imageUrl: imageUrl)
        .then((value) {
      Share.share(value);
    });
    emit(const ShareState.success());
  }
}
