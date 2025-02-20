// make a constructor
//  use default and it contains zero parameters
// use parameterized and it contains two parameters

class Student {
  // instance variables
  String name;
  int age;

  // default constructor
  Student() {
    name = "Unknown";
    age = 0;
  }

  // parameterized constructor
  Student(String n, int a) {
    name = n;
    age = a;
  }

  // copy constructor
  Student(Student other) {
    name = other.name;
    age = other.age;
  }

  // Method to display student information
  void display() {
    System.out.println("Name: " + name);
    System.out.println("Age: " + age);
  }

  public static void main(String[] args) {
    // Creating object using default constructor
    Student s1 = new Student();
    System.out.println("Student 1 (Default Constructor):");
    s1.display();
    
    // Creating object using parameterized constructor
    Student s2 = new Student("John", 20);
    System.out.println("\nStudent 2 (Parameterized Constructor):");
    s2.display();
  }
}