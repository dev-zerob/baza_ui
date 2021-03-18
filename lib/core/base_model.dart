import 'package:flutter/material.dart';
import 'package:baza_ui/core/failure.dart';
import 'package:baza_ui/enums/view_status.dart';

class BaseModel extends ChangeNotifier {
  bool _isLoaded = false;
  ViewStatus _viewStatus = ViewStatus.IDLE;
  Failure _failure;

  bool get isLoaded => _isLoaded;

  void setIsLoaded(bool isLoaded) {
    _isLoaded = isLoaded;
    notifyListeners();
  }

  ViewStatus get viewStatus => _viewStatus;

  void setViewStatus(ViewStatus viewStatus) {
    _viewStatus = viewStatus;
    notifyListeners();
  }

  Failure get failure => _failure;

  void setFailure(Failure failure) {
    _failure = failure;
    notifyListeners();
  }

  bool isIdling() => _viewStatus == ViewStatus.IDLE;

  bool isLoading() => _isLoaded == false;

  bool hasFailure() => _failure != null;
}
