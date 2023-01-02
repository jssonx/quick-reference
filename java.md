# Java

## 字符串 Strings

#### 基本的
```java
String first = "John";
String last = "12";
```
#### 字符串拼接
```java
String s = 3 + "str" + 3;     // 3str3
String s = 3 + 3 + "str";     // 6str
String s = "3" + 3 + "str";   // 33str
String s = "3" + "3" + "23";  // 3323
String s = "" + 3 + 3 + "23"; // 3323
String s = 3 + 3 + 23;        // 29
```

#### 比较
```java
String s1 = new String("QuickRef"); 
String s2 = new String("QuickRef"); 
s1 == s2          // false
s1.equals(s2)     // true
"AB".equalsIgnoreCase("ab")  // true
```

#### 操纵
```java
String str = "Abcd";
str.toUpperCase();     // ABCD
str.toLowerCase();     // abcd
str.concat("#");       // Abcd#
str.replace("b", "-"); // A-cd
"  abc ".trim();       // abc
"ab".toCharArray();    // {'a', 'b'}
```

#### 信息
```java
String str = "abcd";
str.charAt(2);       // c
str.indexOf("a")     // 0
str.indexOf("z")     // -1
str.length();        // 4
str.toString();      // abcd
str.substring(2);    // cd
str.substring(2,3);  // c
str.contains("c");   // true
str.endsWith("d");   // true
str.startsWith("a"); // true
str.isEmpty();       // false
```

#### 不可变：一旦创建就不能修改，任何修改都会创建一个新的String
```java
String str = "hello";
str.concat("world");
// 输出: hello
System.out.println(str);
String str = "hello";
String concat = str.concat("world");
// 输出: helloworld
System.out.println(concat);
```

#### 字符串生成器
```java
StringBuilder sb = new StringBuilder(10);
┌───┬───┬───┬───┬───┬───┬───┬───┬───┐
|   |   |   |   |   |   |   |   |   |
└───┴───┴───┴───┴───┴───┴───┴───┴───┘
0   1   2   3   4   5   6   7   8   9
sb.append("Reference");
┌───┬───┬───┬───┬───┬───┬───┬───┬───┐
| R | e | f | e | r | e | n | c | e |
└───┴───┴───┴───┴───┴───┴───┴───┴───┘
0   1   2   3   4   5   6   7   8   9
sb.delete(3, 9);
┌───┬───┬───┬───┬───┬───┬───┬───┬───┐
| R | e | f |   |   |   |   |   |   |
└───┴───┴───┴───┴───┴───┴───┴───┴───┘
0   1   2   3   4   5   6   7   8   9
sb.insert(0, "My ");
┌───┬───┬───┬───┬───┬───┬───┬───┬───┐
| M | y |   | R | e | f |   |   |   |
└───┴───┴───┴───┴───┴───┴───┴───┴───┘
0   1   2   3   4   5   6   7   8   9
sb.append("!");
┌───┬───┬───┬───┬───┬───┬───┬───┬───┐
| M | y |   | R | e | f | ! |   |   |
└───┴───┴───┴───┴───┴───┴───┴───┴───┘
0   1   2   3   4   5   6   7   8   9
```

## 数组 Arrays

#### 声明 Declare
```java
int[] a1;
int[] a2 = {1, 2, 3};
int[] a3 = new int[]{1, 2, 3};
int[] a4 = new int[3];
a4[0] = 1;
a4[2] = 2;
a4[3] = 3;
char[] chars = new char[10];
chars[0] = 'a'
chars[1] = 'b'
String[] letters = {"A", "B", "C"};
int[] mylist = {100, 200};
boolean[] answers = {true, false};
```

#### 修改 Modify
```java
int[] a = {1, 2, 3};
a[0] = 9;
```

#### Loop (Read)
```java
String[] arr = {"a", "b", "c"};
for (int a: arr) {
    System.out.print(a + " ");
}
// 输出: a b c 
```

#### 排序 sort
```java
char[] chars = {'b', 'a', 'c'};
Arrays.sort(chars);
// [a, b, c]
Arrays.toString(chars);
```
#### 二维数组 Multidimensional Arrays
```java
int[][] matrix = { {1, 2, 3}, {4, 5} };
int x = matrix[1][0];  // 4
// [[1, 2, 3], [4, 5]]
Arrays.deepToString(matrix)
for (int i = 0; i < a.length; ++i) {
  for(int j = 0; j < a[i].length; ++j) {
    System.out.println(a[i][j]);
  }
}
// 输出: 1 2 3 4 5 6 7 
```

## 类型转换 Type Casting

```java
// Widening
// byte<short<int<long<float<double
int i = 10;
long l = i;               // 10
// Narrowing 
double d = 10.02;
long l = (long)d;         // 10
String.valueOf(10);       // "10"
Integer.parseInt("10");   // 10
Double.parseDouble("10"); // 10.0
```

## 用户输入

```java
Scanner in = new Scanner(System.in);
String str = in.nextLine();
System.out.println(str);
int num = in.nextInt();
System.out.println(num);
```

## Java 框架总结

### ArrayList
ArrayList 类是一个可以动态修改的数组，与普通数组的区别就是它是没有固定大小的限制，我们可以添加或删除元素。

#### 举例
```java
import java.util.ArrayList;

public class RunoobTest {
    public static void main(String[] args) {
        ArrayList<String> sites = new ArrayList<String>(); // 初始化
        sites.add("Google"); // 添加元素
        sites.add("Runoob");
        sites.add("Taobao");
        sites.add("Weibo");
        sites.set(2, "Wiki"); // 第一个参数为索引位置，第二个为要修改的值
        System.out.println(sites.get(1));  // 访问第二个元素
        sites.remove(3); // 删除第四个元素
        System.out.println(sites);
        System.out.println(sites.size());
    }
}
```
#### 方法总结
| **方法**           | **描述**                     |
|:----------------:|:--------------------------:|
| add()            | 将元素插入到指定位置的arraylist中      |
| addAll()         | 添加集合中的所有元素到arraylist中      |
| clear()          | 删除arraylist中的所有元素          |
| clone()          | 复制一份arraylist              |
| contains()       | 判断元素是否在arraylist           |
| get()            | 通过索引值获取arraylist中的元素       |
| indexOf()        | 返回arraylist中元素的索引值         |
| removeAll()      | 删除存在于指定集合中的arraylist里的所有元素 |
| remove()         | 删除arraylist里的单个元素          |
| size()           | 返回arraylist里元素数量           |
| isEmpty()        | 判断arraylist是否为空            |
| subList()        | 截取部分arraylist的元素           |
| set()            | 替换arraylist中指定索引的元素        |
| sort()           | 对arraylist元素进行排序           |
| toArray()        | 将arraylist转换为数组            |
| toString()       | 将arraylist转换为字符串           |
| ensureCapacity() | 设置指定容量大小的arraylist         |
| lastIndexOf()    | 返回指定元素在arraylist中最后一次出现的位置 |
| retainAll()      | 保留arraylist中在指定集合中也存在的那些元素 |
| containsAll()    | 查看arraylist是否包含指定集合中的所有元素  |
| trimToSize()     | 将arraylist中的容量调整为数组中的元素个数  |
| removeRange()    | 删除arraylist中指定索引之间存在的元素    |
| replaceAll()     | 将给定的操作内容替换掉数组中每一个元素        |
| removeIf()       | 删除所有满足特定条件的arraylist元素     |
| forEach()        | 遍历arraylist中每一个元素并执行特定操作   |

#### 迭代数组列表 for
我们可以使用 for 来迭代数组列表中的元素

### Vector

### LinkedList

### HashSet

### TreeSet

### HashMap

### HashTable

### TreeMap

### ArrayDeque

### PriorityQueue






















## Java 框架总结（表格）
<table class="show-header"><thead><tr><th align="left">集合</th><th align="left">Interface</th><th align="left">有序</th><th align="left">已排序</th><th align="left">线程安全</th><th align="left">复制</th><th align="left">Nullable</th></tr></thead><tbody><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/ArrayList.html">ArrayList</a></td><td align="left">List</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/Vector.html">Vector</a></td><td align="left">List</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td><td align="left">Y</td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/LinkedList.html">LinkedList</a></td><td align="left">List, Deque</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/CopyOnWriteArrayList.html">CopyOnWriteArrayList</a></td><td align="left">List</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td><td align="left">Y</td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/HashSet.html">HashSet</a></td><td align="left">Set</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">One <code>null</code></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/LinkedHashSet.html">LinkedHashSet</a></td><td align="left">Set</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">One <code>null</code></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/TreeSet.html">TreeSet</a></td><td align="left">Set</td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/CopyOnWriteArraySet.html">CopyOnWriteArraySet</a></td><td align="left">Set</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">One <code>null</code></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/ConcurrentSkipListSet.html">ConcurrentSkipListSet</a></td><td align="left">Set</td><td align="left">Y</td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/HashMap.html">HashMap</a></td><td align="left">Map</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left"><em>N (key)</em></td><td align="left">One <code>null</code> <em>(key)</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/Hashtable.html">HashTable</a></td><td align="left">Map</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left"><em>N (key)</em></td><td align="left"><em>N (key)</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/LinkedHashMap.html">LinkedHashMap</a></td><td align="left">Map</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left"><em>N (key)</em></td><td align="left">One <code>null</code> <em>(key)</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/TreeMap.html">TreeMap</a></td><td align="left">Map</td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N (key)</em></td><td align="left"><em>N (key)</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/ConcurrentHashMap.html">ConcurrentHashMap</a></td><td align="left">Map</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left"><em>N (key)</em></td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/ConcurrentSkipListMap.html">ConcurrentSkipListMap</a></td><td align="left">Map</td><td align="left">Y</td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N (key)</em></td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/ArrayDeque.html">ArrayDeque</a></td><td align="left">Deque</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/PriorityQueue.html">PriorityQueue</a></td><td align="left">Queue</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/ConcurrentLinkedQueue.html">ConcurrentLinkedQueue</a></td><td align="left">Queue</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/ConcurrentLinkedDeque.html">ConcurrentLinkedDeque</a></td><td align="left">Deque</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/ArrayBlockingQueue.html">ArrayBlockingQueue</a></td><td align="left">Queue</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/LinkedBlockingDeque.html">LinkedBlockingDeque</a></td><td align="left">Deque</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/PriorityBlockingQueue.html">PriorityBlockingQueue</a></td><td align="left">Queue</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td></tr></tbody></table>