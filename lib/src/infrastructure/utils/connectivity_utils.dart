import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityUtils {
  Future<bool> hasConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      return false;
    }
    return true;
  }
}
