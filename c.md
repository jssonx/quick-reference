# C programming language

## 1. Introduction
## 2. A Simple C Program
```c
       main( ) {
               printf("hello, world");
       }
```

## 3. A Working C Program; Variables; Types and Type Declarations
```c
       main( ) {
               int a, b, c, sum;
               a = 1;  b = 2;  c = 3;
               sum = a + b + c;
               printf("sum is %d", sum);
       }
```

 - int
 - char
 - float：单精度浮点数
 - double：双精度浮点数

## 4. Constants
八进制：0开头
十六进制：16开头

## 5. Simple I/O -- getchar, putchar, printf
```c
       main( ) {
               char c;
               c = getchar( );
               putchar(c);
       }
```
 - getchar: fetches one character from the standard input (usually the terminal) each time it is called, and returns that character as the value of the function. 
 - putchar: puts one character out on the standard output (usually the terminal) each time it is called
 - 占位符：printf ("sum is %d\n", sum);
   - %d：10位数
   - %c：char
   - %s：字符串
   - %o：八位数

## 6. If; relational operators; compound statements
```c
if( c==' ' || c=='\t' || c=='\n' ) ...
```
```c
       if (a < b) {
               t = a;
               a = b;
               b = t;
       }
```

## 7. While Statement; Assignment within an Expression; Null Statement
Remember that `\0' marks the end of file.
```c
       main( ) {
               char c;
               while( (c=getchar( )) != '\0' )
                       putchar(c);
       }
```

## 8. Arithmetic

`+`, `-`, `*`, `/`, `%`

char variables can usually be treated like int variables. It converts a single lower case ascii character stored in c to upper case
```c
       c = c + 'A' - 'a';
```
So to convert a file into lower case:
```c
       main( ) {
               char c;
               while( (c=getchar( )) != '\0' )
                       if( 'A'<=c && c<='Z' )
                               putchar(c+'a'-'A');
                       else
                               putchar(c);
       }
```

## 9. Else Clause; Conditional Expressions
```c
       if (a < b)
               x = a;
       else
               x = b;
```
```c
       if(...)
               {...}
       else if(...)
               {...}
       else if(...)
               {...}
       else
               {...}
```

```c
       a<b ? a : b;
       x = (a<b ? a : b);
```
We could write the loop in the lower-case program as
```c
       while( (c=getchar( )) != '\0' )
               putchar( ('A'<=c && c<='Z') ? c-'A'+'a' : c );
```
## 10. Increment and Decrement Operators
先+1再赋值
```c
       x = ++k;
```
先赋值再+1
```c
       x = k++;
```

## 11. Arrays
一维数组
```c
       int x[10];
```
二维数组
```c
       int name[10] [20];
       n = name[i+j] [1] + name[k] [2];
```
we want to print the count for each line in the input, still storing the first 100 characters of each line.
```c
       main( ) {
               int n, c; char line[100];
               n = 0;
               while( (c=getchar( )) != '\0' )
                       if( c == '\n' ) {
                               printf("%d", n);
                               n = 0;
                       }
                       else {
                               if( n < 100 ) line[n] = c;
                               n++;
                       }
       }
```

## 12. Character Arrays; Strings
By convention in C, the last character in a character array should be a `\0` because most programs that manipulate character arrays expect it.  For example, printf uses the `\0` to detect the end of a character array when printing it out with a `%s`.

We can copy a character array s into another t like this:
```c
               i = 0;
               while( (t[i]=s[i]) != '\0' )
                       i++;
```

## 13. For Statement
```c
       for( initialization; expression; increment )
               statement
```
```c
        initialization;
        while( expression ) {
               statement
               increment;
        }
```

## 14. Functions; Comments
To copy a character array, we could write the function
```c
       strcopy(s1, s2)         /* copies s1 to s2 */
          char s1[ ], s2[ ]; {
               int i;
               for( i = 0; (s2[i] = s1[i]) != '\0'; i++ );
       }
```

## 15. Local and External Variables
```c
       f( ) {
               int x;
               ...
       }
       g( ) {
               int x;
               ...
       }
```
函数内部访问外部变量：粗略地说，任何希望访问外部变量的函数都必须包含一个 extern 声明
```c
       main( ) { 
               extern int nchar, hist[ ]; 
               ...
               计数（）; 
               ... 
       } 

       count( ) { 
               extern int nchar, hist[ ]; 
               诠释我，C; 
               ... 
       } 
       int hist[129]; /* 直方图空间 */ 
       int nchar; /* 字符数 */
```

## 16. Pointers

















