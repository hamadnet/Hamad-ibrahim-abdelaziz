# section4.dart

//Manage Student Names
void main() {
  Set<String> students = {};
  void addStudent(String name) {
    students.add(name);
  }
  void printStudents(List<String> list, int index) {
    if (index >= list.length) return;
    print(list[index]);
    printStudents(list, index + 1);
  }
  addStudent("Hamad");
  addStudent("Ahmed");
  addStudent("Ali");
  print("Recursive Print:");
  printStudents(students.toList(), 0);
  print("Lambda forEach:");
  students.forEach((student) => print(student));
  Set<String> newStudents = {"Sara", "Mona"};
  Set<String> allStudents = {...students, ...newStudents};
  print("Merged Set:");
  print(allStudents);
}
/////////////////////////////////////////////////////////////////
//Manage Student Courses
void main() {
  Map<String, List<int>> students = {};
  void addCourse(String studentName, String courseName, {int grade = 0}) {
    students.putIfAbsent(studentName, () => []);
    students[studentName]!.add(grade);

  }

  double averageGrade(String studentName) {
    var grades = students[studentName];
    if (grades == null || grades.isEmpty) {
      return 0;
    }
    int sum = grades.reduce((a, b) => a + b);
    return sum / grades.length;
  }

  addCourse("Hamad", "Math", grade: 90);
  addCourse("Hamad", "Physics", grade: 80);
  addCourse("Hamad", "Programming", grade: 95);

  addCourse("Ali", "Math", grade: 70);
  addCourse("Ali", "Physics");

  print("Average Hamad: ${averageGrade("Hamad")}");
  print("Average Ali: ${averageGrade("Ali")}");

}
