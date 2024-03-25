abstract class UtilsCalculator {
  static Map<int, int> daysInMonths(int year) {
    return {
      1: 31, // Январь
      2: isLeapYear(year) ? 29 : 28, // Февраль
      3: 31, // Март
      4: 30, // Апрель
      5: 31, // Май
      6: 30, // Июнь
      7: 31, // Июль
      8: 31, // Август
      9: 30, // Сентябрь
      10: 31, // Октябрь
      11: 30, // Ноябрь
      12: 31, // Декабрь
    };
  }

  static bool isLeapYear(int year) {
    if (year % 400 == 0) {
      return true; // Високосный год
    } else if (year % 100 == 0) {
      return false; // Невисокосный год
    } else if (year % 4 == 0) {
      return true; // Високосный год
    } else {
      return false; // Невисокосный год
    }
  }

  static (int years, int months) calculateYearsAndMonths(int totalMonths) {
    final years = totalMonths ~/ 12; // Количество полных лет
    final months = totalMonths % 12; // Остаток месяцев после деления на 12
    return (years, months);
  }

  static double round(double value) {
    return double.parse(value.toStringAsFixed(2));
  }
}
