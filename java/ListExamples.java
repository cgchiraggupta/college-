import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class ListExamples {
    public static void main(String[] args) {
        // 1. ArrayList - Most commonly used List
        List<String> fruits = new ArrayList<>();
        fruits.add("Apple");
        fruits.add("Banana");
        fruits.add("Orange");
        
        // Different ways to print
        System.out.println("\n--- Fruits ArrayList ---");
        System.out.println(fruits);  // Prints: [Apple, Banana, Orange]
        
        // Loop through list
        for(String fruit : fruits) {
            System.out.println(fruit);
        }

        // 2. ArrayList with numbers
        List<Integer> numbers = new ArrayList<>();
        numbers.add(1);
        numbers.add(2);
        numbers.add(3);
        
        System.out.println("\n--- Numbers Operations ---");
        System.out.println("Original list: " + numbers);
        numbers.remove(1);  // Removes element at index 1
        System.out.println("After removing index 1: " + numbers);
        
        // 3. LinkedList - Good for frequent insertions/deletions
        LinkedList<String> students = new LinkedList<>();
        students.add("John");
        students.addFirst("Alice");  // Adds at beginning
        students.addLast("Bob");     // Adds at end
        
        System.out.println("\n--- Students LinkedList ---");
        System.out.println(students);
        
        // 4. ArrayList with custom objects
        List<Student> studentList = new ArrayList<>();
        studentList.add(new Student("Alice", 20));
        studentList.add(new Student("Bob", 22));
        
        System.out.println("\n--- Student Objects ---");
        for(Student student : studentList) {
            System.out.println(student);
        }
    }
}

// Custom class for example
class Student {
    String name;
    int age;
    
    public Student(String name, int age) {
        this.name = name;
        this.age = age;
    }
    
    @Override
    public String toString() {
        return "Student{name='" + name + "', age=" + age + "}";
    }
} 