import 'package:flutter/material.dart';
import 'package:selfcheckcovid19/common/constants.dart';
import 'package:selfcheckcovid19/models/Result.dart';

final Result resultNone =
    Result("None", SUGGESTION_NONE_TEXT, Colors.green.shade900);
final Result resultLow =
    Result("Low", SUGGESTION_LOW_TEXT, Colors.lightGreenAccent.shade700);
final Result resultMedium =
    Result("Medium", SUGGESTION_MED_TEXT, Colors.orange);
final Result resultHigh =
    Result("High", SUGGESTION_HIGH_TEXT, Colors.red.shade900);

class ResultSet {
  var _resultSet = {
    NONE_LABEL: resultNone,
    LOW_LABEL: resultLow,
    MED_LABEL: resultMedium,
    HIGH_LABEL: resultHigh,
  };

  get resultSet => _resultSet;

  Result getResultNone() {
    return resultSet[NONE_LABEL];
  }

  Result getResultLow() {
    return resultSet[LOW_LABEL];
  }

  Result getResultMed() {
    return resultSet[MED_LABEL];
  }

  Result getResultHigh() {
    return resultSet[HIGH_LABEL];
  }
}
