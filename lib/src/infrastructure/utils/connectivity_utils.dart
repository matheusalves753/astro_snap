import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityUtils {
  static Future<bool> hasConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      return false;
    }
    return true;
  }
}

class ConnectivityService {
  Future<bool> hasConnectivity() {
    return ConnectivityUtils.hasConnectivity();
  }
}
