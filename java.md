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
| **变量和类型**       | **方法**                                        | **描述**                                                       |
|:---------------:|:---------------------------------------------:|:------------------------------------------------------------:|
| void            | add​(int index, E element)                    | 将指定元素插入此列表中的指定位置。                                            |
| boolean         | add​(E e)                                     | 将指定的元素追加到此列表的末尾。                                             |
| boolean         | addAll​(int index, Collection<? extends E> c) | 从指定位置开始，将指定集合中的所有元素插入此列表。                                    |
| boolean         | addAll​(Collection<? extends E> c)            | 将指定集合中的所有元素按指定集合的Iterator返回的顺序附加到此列表的末尾。                     |
| void            | clear()                                       | 从此列表中删除所有元素。                                                 |
| Object          | clone()                                       | 返回此 ArrayList实例的浅表副本。                                        |
| boolean         | contains​(Object o)                           | 如果此列表包含指定的元素，则返回 true 。                                      |
| void            | ensureCapacity​(int minCapacity)              | 如有必要，增加此 ArrayList实例的容量，以确保它至少可以容纳由minimum capacity参数指定的元素数。 |
| void            | forEach​(Consumer<? super E> action)          | 对 Iterable每个元素执行给定操作，直到处理 Iterable所有元素或操作引发异常。               |
| E               | get​(int index)                               | 返回此列表中指定位置的元素。                                               |
| int             | indexOf​(Object o)                            | 返回此列表中第一次出现的指定元素的索引，如果此列表不包含该元素，则返回-1。                       |
| boolean         | isEmpty()                                     | 如果此列表不包含任何元素，则返回 true 。                                      |
| Iterator<E>     | iterator()                                    | 以适当的顺序返回此列表中元素的迭代器。                                          |
| int             | lastIndexOf​(Object o)                        | 返回此列表中指定元素最后一次出现的索引，如果此列表不包含该元素，则返回-1。                       |
| ListIterator<E> | listIterator()                                | 返回此列表中元素的列表迭代器（按适当顺序）。                                       |
| ListIterator<E> | listIterator​(int index)                      | 从列表中的指定位置开始，返回列表中元素的列表迭代器（按正确顺序）。                            |
| E               | remove​(int index)                            | 删除此列表中指定位置的元素。                                               |
| boolean         | remove​(Object o)                             | 从该列表中删除指定元素的第一个匹配项（如果存在）。                                    |
| boolean         | removeAll​(Collection<?> c)                   | 从此列表中删除指定集合中包含的所有元素。                                         |
| boolean         | removeIf​(Predicate<? super E> filter)        | 删除此集合中满足给定谓词的所有元素。                                           |
| protected void  | removeRange​(int fromIndex, int toIndex)      | 从此列表中删除索引介于 fromIndex （含）和 toIndex （独占）之间的所有元素。              |
| boolean         | retainAll​(Collection<?> c)                   | 仅保留此列表中包含在指定集合中的元素。                                          |
| E               | set​(int index, E element)                    | 用指定的元素替换此列表中指定位置的元素。                                         |
| int             | size()                                        | 返回此列表中的元素数。                                                  |
| Spliterator<E>  | spliterator()                                 | 在此列表中的元素上创建late-binding和故障快速 Spliterator 。                   |
| List<E>         | subList​(int fromIndex, int toIndex)          | 返回指定的 fromIndex （包含）和 toIndex （不包括）之间的此列表部分的视图。              |
| Object[]        | toArray()                                     | 以适当的顺序（从第一个元素到最后一个元素）返回包含此列表中所有元素的数组。                        |
| <T> T[]         | toArray​(T[] a)                               | 以适当的顺序返回包含此列表中所有元素的数组（从第一个元素到最后一个元素）; 返回数组的运行时类型是指定数组的运行时类型。 |


#### 迭代数组列表 for
我们可以使用 for 来迭代数组列表中的元素

### LinkedList

#### 举例
```java
import java.util.LinkedList;

public class RunoobTest {
    public static void main(String[] args) {
        LinkedList<String> sites = new LinkedList<String>(); //初始化
        sites.add("Google"); // 添加元素
        sites.addFirst("Wiki");// 使用 addFirst() 在头部添加元素   
        sites.addLast("Wiki"); // 使用 addLast() 在尾部添加元素
        sites.removeFirst(); // 使用 removeFirst() 移除头部元素
        sites.removeLast(); // 使用 removeLast() 移除尾部元素
        System.out.println(sites.getFirst()); // 使用 getFirst() 获取头部元素
        System.out.println(sites.getLast()); // 使用 getLast() 获取尾部元素
        for (int size = sites.size(), i = 0; i < size; i++) {
            System.out.println(sites.get(i));
        }
        for (String i : sites) {
            System.out.println(i);
        }
        sites.add("Runoob");
        sites.add("Taobao");
        sites.add("Weibo");
        System.out.println(sites);
    }
}
```

#### 方法总结
| **变量和类型**       | **方法**                                        | **描述**                                                       |
|:---------------:|:---------------------------------------------:|:------------------------------------------------------------:|
| void            | add​(int index, E element)                    | 将指定元素插入此列表中的指定位置。                                            |
| boolean         | add​(E e)                                     | 将指定的元素追加到此列表的末尾。                                             |
| boolean         | addAll​(int index, Collection<? extends E> c) | 从指定位置开始，将指定集合中的所有元素插入此列表。                                    |
| boolean         | addAll​(Collection<? extends E> c)            | 将指定集合中的所有元素按指定集合的迭代器返回的顺序附加到此列表的末尾。                          |
| void            | addFirst​(E e)                                | 在此列表的开头插入指定的元素。                                              |
| void            | addLast​(E e)                                 | 将指定的元素追加到此列表的末尾。                                             |
| void            | clear()                                       | 从此列表中删除所有元素。                                                 |
| Object          | clone()                                       | 返回此 LinkedList的浅表副本。                                         |
| boolean         | contains​(Object o)                           | 如果此列表包含指定的元素，则返回 true 。                                      |
| Iterator<E>     | descendingIterator()                          | 以相反的顺序返回此双端队列中元素的迭代器。                                        |
| E               | element()                                     | 检索但不删除此列表的头部（第一个元素）。                                         |
| E               | get​(int index)                               | 返回此列表中指定位置的元素。                                               |
| E               | getFirst()                                    | 返回此列表中的第一个元素。                                                |
| E               | getLast()                                     | 返回此列表中的最后一个元素。                                               |
| int             | indexOf​(Object o)                            | 返回此列表中第一次出现的指定元素的索引，如果此列表不包含该元素，则返回-1。                       |
| int             | lastIndexOf​(Object o)                        | 返回此列表中指定元素最后一次出现的索引，如果此列表不包含该元素，则返回-1。                       |
| ListIterator<E> | listIterator​(int index)                      | 从列表中的指定位置开始，返回此列表中元素的列表迭代器（按正确顺序）。                           |
| boolean         | offer​(E e)                                   | 将指定的元素添加为此列表的尾部（最后一个元素）。                                     |
| boolean         | offerFirst​(E e)                              | 在此列表的前面插入指定的元素。                                              |
| boolean         | offerLast​(E e)                               | 在此列表的末尾插入指定的元素。                                              |
| E               | peek()                                        | 检索但不删除此列表的头部（第一个元素）。                                         |
| E               | peekFirst()                                   | 检索但不删除此列表的第一个元素，如果此列表为空，则返回 null 。                           |
| E               | peekLast()                                    | 检索但不删除此列表的最后一个元素，如果此列表为空，则返回 null 。                          |
| E               | poll()                                        | 检索并删除此列表的头部（第一个元素）。                                          |
| E               | pollFirst()                                   | 检索并删除此列表的第一个元素，如果此列表为空，则返回 null 。                            |
| E               | pollLast()                                    | 检索并删除此列表的最后一个元素，如果此列表为空，则返回 null 。                           |
| E               | pop()                                         | 弹出此列表所代表的堆栈中的元素。                                             |
| void            | push​(E e)                                    | 将元素推送到此列表所表示的堆栈上。                                            |
| E               | remove()                                      | 检索并删除此列表的头部（第一个元素）。                                          |
| E               | remove​(int index)                            | 删除此列表中指定位置的元素。                                               |
| boolean         | remove​(Object o)                             | 从该列表中删除指定元素的第一个匹配项（如果存在）。                                    |
| E               | removeFirst()                                 | 从此列表中删除并返回第一个元素。                                             |
| boolean         | removeFirstOccurrence​(Object o)              | 删除此列表中第一次出现的指定元素（从头到尾遍历列表时）。                                 |
| E               | removeLast()                                  | 从此列表中删除并返回最后一个元素。                                            |
| boolean         | removeLastOccurrence​(Object o)               | 删除此列表中最后一次出现的指定元素（从头到尾遍历列表时）。                                |
| E               | set​(int index, E element)                    | 用指定的元素替换此列表中指定位置的元素。                                         |
| int             | size()                                        | 返回此列表中的元素数。                                                  |
| Spliterator<E>  | spliterator()                                 | 在此列表中的元素上创建late-binding和故障快速 Spliterator 。                   |
| Object[]        | toArray()                                     | 以适当的顺序（从第一个元素到最后一个元素）返回包含此列表中所有元素的数组。                        |
| <T> T[]         | toArray​(T[] a)                               | 以适当的顺序返回包含此列表中所有元素的数组（从第一个元素到最后一个元素）; 返回数组的运行时类型是指定数组的运行时类型。 |



### HashSet

#### 举例
```java
// 引入 HashSet 类      
import java.util.HashSet;

public class RunoobTest {
    public static void main(String[] args) {
    HashSet<String> sites = new HashSet<String>();
        sites.add("Google");
        sites.add("Runoob");
        sites.add("Taobao");
        sites.add("Zhihu");
        sites.add("Runoob");  // 重复的元素不会被添加
        System.out.println(sites);
        System.out.println(sites.contains("Taobao")); // 判断元素是否存在
        sites.remove("Taobao");  // 删除元素，删除成功返回 true，否则为 false
        sites.clear();  // 删除所有元素
        System.out.println(sites.size());  // 计算大小
        for (String i : sites) {
            System.out.println(i);
        }
    }
}
```

#### 方法总结
| **变量和类型**      | **方法**              | **描述**                                     |
|:--------------:|:-------------------:|:------------------------------------------:|
| boolean        | add​(E e)           | 如果指定的元素尚不存在，则将其添加到此集合中。                    |
| void           | clear()             | 从该集中删除所有元素。                                |
| Object         | clone()             | 返回此 HashSet实例的浅表副本：未克隆元素本身。                |
| boolean        | contains​(Object o) | 如果此set包含指定的元素，则返回 true 。                   |
| boolean        | isEmpty()           | 如果此集合不包含任何元素，则返回 true 。                    |
| Iterator<E>    | iterator()          | 返回此set中元素的迭代器。                             |
| boolean        | remove​(Object o)   | 如果存在，则从该集合中移除指定的元素。                        |
| int            | size()              | 返回此集合中的元素数（基数）。                            |
| Spliterator<E> | spliterator()       | 在此集合中的元素上创建late-binding和失败快速 Spliterator 。 |


### HashMap

### HashTable

### ArrayDeque

### PriorityQueue






















## Java 框架总结（表格）
<table class="show-header"><thead><tr><th align="left">集合</th><th align="left">Interface</th><th align="left">有序</th><th align="left">已排序</th><th align="left">线程安全</th><th align="left">复制</th><th align="left">Nullable</th></tr></thead><tbody><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/ArrayList.html">ArrayList</a></td><td align="left">List</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/Vector.html">Vector</a></td><td align="left">List</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td><td align="left">Y</td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/LinkedList.html">LinkedList</a></td><td align="left">List, Deque</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/CopyOnWriteArrayList.html">CopyOnWriteArrayList</a></td><td align="left">List</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td><td align="left">Y</td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/HashSet.html">HashSet</a></td><td align="left">Set</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">One <code>null</code></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/LinkedHashSet.html">LinkedHashSet</a></td><td align="left">Set</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">One <code>null</code></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/TreeSet.html">TreeSet</a></td><td align="left">Set</td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/CopyOnWriteArraySet.html">CopyOnWriteArraySet</a></td><td align="left">Set</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">One <code>null</code></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/ConcurrentSkipListSet.html">ConcurrentSkipListSet</a></td><td align="left">Set</td><td align="left">Y</td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/HashMap.html">HashMap</a></td><td align="left">Map</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left"><em>N (key)</em></td><td align="left">One <code>null</code> <em>(key)</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/Hashtable.html">HashTable</a></td><td align="left">Map</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left"><em>N (key)</em></td><td align="left"><em>N (key)</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/LinkedHashMap.html">LinkedHashMap</a></td><td align="left">Map</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left"><em>N (key)</em></td><td align="left">One <code>null</code> <em>(key)</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/TreeMap.html">TreeMap</a></td><td align="left">Map</td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N (key)</em></td><td align="left"><em>N (key)</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/ConcurrentHashMap.html">ConcurrentHashMap</a></td><td align="left">Map</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left"><em>N (key)</em></td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/ConcurrentSkipListMap.html">ConcurrentSkipListMap</a></td><td align="left">Map</td><td align="left">Y</td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N (key)</em></td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/ArrayDeque.html">ArrayDeque</a></td><td align="left">Deque</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/PriorityQueue.html">PriorityQueue</a></td><td align="left">Queue</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/ConcurrentLinkedQueue.html">ConcurrentLinkedQueue</a></td><td align="left">Queue</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/ConcurrentLinkedDeque.html">ConcurrentLinkedDeque</a></td><td align="left">Deque</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/ArrayBlockingQueue.html">ArrayBlockingQueue</a></td><td align="left">Queue</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/LinkedBlockingDeque.html">LinkedBlockingDeque</a></td><td align="left">Deque</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td></tr><tr><td align="left"><a href="https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/PriorityBlockingQueue.html">PriorityBlockingQueue</a></td><td align="left">Queue</td><td align="left">Y</td><td align="left"><em>N</em></td><td align="left">Y</td><td align="left">Y</td><td align="left"><em>N</em></td></tr></tbody></table>



## References
 - https://www.runoob.com/manual/jdk11api/java.base/java/util/package-summary.html