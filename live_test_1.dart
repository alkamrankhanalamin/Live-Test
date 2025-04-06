main() {

  List<dynamic> studentScores = [

    {"name": "Alice", "scores": [85, 90, 78]},

    {"name": "Bob", "scores": [88, 76, 95]},

    {"name": "Charlie", "scores": [90, 92, 85]}

  ];

  Map <String,double> result={};

  for (int index= 0; index<studentScores.length; index++) {
    var student = studentScores[index];
    String name = student["name"];
    List<int> scores = student["scores"];

    int sum = 0;
    for (int j= 0; j<scores.length; j++) {
      sum+=scores[j];
    }

    double avarage = double.parse((sum/scores.length).toStringAsFixed(2));
    result[name]=avarage;

  }

  // Sorting by value (average) descending
  var sortedResult = Map.fromEntries(
    result.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value)),
  );

  print(sortedResult);

}