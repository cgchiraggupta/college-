class Student {
    // Instance variables
    String name;
    int age;
    
    // Default constructor (no parameters)
    Student() {
        name = "Unknown";
        age = 0;
    }
    
    // Parameterized constructor
    Student(String name, int age) {
        this.name = name;  // 'this' refers to the current object
        this.age = age;
    }
    
    // Copy constructor
    Student(Student other) {
        this.name = other.name;
        this.age = other.age;
    }
}

public class Main {
    public static void main(String[] args) {
        // Using default constructor
        Student s1 = new Student();
        
        // Using parameterized constructor
        Student s2 = new Student("John", 20);
        
        // Using copy constructor
        Student s3 = new Student(s2);
    }
}
