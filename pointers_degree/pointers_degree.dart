void main(List<String> args) {
  final String hour = '13:15';

  String howManyDegree(String hour) {
    final dots = hour.indexOf(':');
    int h = int.parse(hour.substring(0, dots));
    int m = int.parse(hour.substring(dots + 1));
    if (m == 60) {
      h++;
      m = 00;
    }
    h > 12 ? h -= 12 : null;
    h == 12 ? h = 0 : null;
    print('$h:$m');
    if ((h == 12 || h == 0) && m == 0) {
      return 'Has 0 degrees';
    } else {
      int back = 0, front = 0;
      final hInM = h * 5;
      for (var i = hInM; i < 60; i++) {
        front++;
        i == 59 ? i = 0 : null;
        i == m - 1 ? i = 60 : null;
      }
      for (var i = hInM; i > 0; i--) {
        back++;
        i == 0 ? i = 60 : null;
        i == m - 1 ? i = 0 : null;
      }
      print('$front - $back');
      String result;
      if (front > back) {
        final int degree = (front - back) * 6;
        result = 'The short distance between $hour has $degree degrees';
      }
      if (front == back) {
        result = 'The distance between $hour has 0 degrees';
      } else {
        final int degree = (back - front) * 6;
        result = 'The short distance between $hour has $degree degrees';
      }
      return result;
    }
  }

  print(howManyDegree(hour));
}
