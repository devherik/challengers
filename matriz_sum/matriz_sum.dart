void main() {
  final f = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  final s = [
    [9, 8, 7],
    [6, 5, 4],
    [3, 2, 1]
  ];

  List enterTheMatrix(List first, List second) {
    final sum = [];
    for (var i = 0; i < first.length; i++) {
      final matriz = [];
      for (var c = 0; c < first[i].length; c++) {
        matriz.add(first[i][c] + second[i][c]);
      }
      sum.add(matriz);
    }
    return sum;
  }

  try {
    final matrix = enterTheMatrix(f, s);
    for (var element in matrix) {
      print(element);
    }
  } catch (e) {
    print(e.toString());
  }
}
