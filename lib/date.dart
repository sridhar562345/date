class Date {
  late int year;
  int month = 1;
  int day = 1;

  Date(int year, [int month = 1, int day = 1]) {
    this.year = DateTime(year, month, day).year;
    this.month = DateTime(year, month, day).month;
    this.day = DateTime(year, month, day).day;
  }

  factory Date.now() {
    DateTime currentDateTime = DateTime.now();
    return Date(
        currentDateTime.year, currentDateTime.month, currentDateTime.day);
  }

  static Date parse(String formattedString) {
    DateTime dateTime = DateTime.parse(formattedString);
    return Date(dateTime.year, dateTime.month, dateTime.day);
  }

  static Date? tryparse(String formattedString) {
    try {
      return parse(formattedString);
    } on FormatException {
      return null;
    }
  }

  bool isAtSameMomentAs(Date other) {
    DateTime dateTime = DateTime(year, month, day);
    return dateTime
        .isAtSameMomentAs(DateTime(other.year, other.month, other.day));
  }

  bool isAfter(Date other) {
    DateTime dateTime = DateTime(year, month, day);
    return dateTime.isAfter(DateTime(other.year, other.month, other.day));
  }

  bool isBefore(Date other) {
    DateTime dateTime = DateTime(year, month, day);
    return dateTime.isBefore(DateTime(other.year, other.month, other.day));
  }

  int compareTo(Date other) {
    DateTime dateTime = DateTime(year, month, day);
    return dateTime.compareTo(DateTime(other.year, other.month, other.day));
  }

  Date add(Duration duration) {
    DateTime dateTime = DateTime(year, month, day).add(duration);
    return Date(dateTime.year, dateTime.month, dateTime.day);
  }

  Date subtract(Duration duration) {
    DateTime dateTime = DateTime(year, month, day).subtract(duration);
    return Date(dateTime.year, dateTime.month, dateTime.day);
  }

  Duration difference(Date other) {
    DateTime dateTime = DateTime(year, month, day);
    return dateTime.difference(DateTime(other.year, other.month, other.day));
  }

  @override
  String toString() {
    return DateTime(year, month, day).toString().substring(0, 10);
  }
}

class DateSerializer {
  // Handling single Date Object serialization
  static Date fromJson(String date) => Date.parse(date);
  static String toJson(Date date) => date.toString();
  static Date? fromNullableJson(String? date) =>
      date == null ? null : Date.parse(date);
  static String? toNullableJson(Date? date) => date?.toString();
  // Handling Multiple Date Object serialization
  static List<Date> fromJsonList(List<dynamic> date) =>
      date.map((e) => Date.parse(e as String)).toList();
  static List<String> toJsonList(List<Date> date) =>
      date.map((e) => e.toString()).toList();
  static List<Date>? fromNullableJsonList(List<dynamic>? date) =>
      date?.map((e) => Date.parse(e as String)).toList();
  static List<String>? toNullableJsonList(List<Date>? date) =>
      date?.map((e) => e.toString()).toList();
}
