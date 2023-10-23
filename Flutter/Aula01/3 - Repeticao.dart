void main(List<String> args) {
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  var j = 1;

  do {
    print('2 X $j = ${2 * j}');
    j++;
  } while (j <= 10);
}
