import 'package:flutter_application/model/activity_model.dart';
import 'package:flutter_application/services/remote_services.dart';
import 'package:get/state_manager.dart';

class ActivityController extends GetxController {
  @override
  var activityModel = ActivityModel().obs;
  var _yazi = " ".obs;

  @override
  void onInit() {
    getActivity();
    super.onInit();
  }

  get yazi => _yazi.value;

  void getActivity() async {
    var activity = await RemoteServices.getActivity();
    if (activity != null) {
      activityModel.value = activity;
    }
  }
}
