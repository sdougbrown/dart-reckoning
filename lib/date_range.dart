// DateRange
class DateRange {
  String name;
  DateTime fromDate;
  DateTime toDate;
  Map<DateTime> byDate;
  Map<int> byMonth;
  Map<int> byWeekday;
  Map<int> byDay;

  DateRange(Map ops)
    : name = getRangeName(ops["name"]),
      fromDate = parse(ops["fromDate"]),
      toDate = parse(ops["toDate"]) {
    // iterate ops["everyMonth"] -> byMonth
    // iterate ops["everWeekday"] -> byWeekDay
    // iterate ops["everyDate"] -> byDay
    // iterate ops["fromDate"], ops["toDate"] -> byDate
    // iterate ops["dates"] -> byDate
  }

  // toString
  // toJSON
  // setDate
  // addDate
  // removeDate
  // clearDates
  // inRange

}

String getRangeName(String name) {
  return (name != null) ? name : "range";
}

DateTime parse(date) {
  return (date is String) ? DateTime.parse(date) : date;
}

// getMapBetween
// getMapByRepeat

