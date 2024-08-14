void main(List<String> args) {
  triangle(int high) {
    for (var i = 1; i <= high; i++) {
      String points = '';
      for (var a = 0; a < i; a++) {
        points += '*';
      }
      print(points);
    }
  }

  triangle(15);
}
