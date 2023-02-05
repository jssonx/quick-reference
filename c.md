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
A pointer in C is the address of something. pointers are a quite common way to get at the contents of something.

The unary operator `&' is used to produce the address of an object
```c
          int a, *b, c;
          b = &a; /* 用来取地址 */
          c = *b; /* 用来取地址中的内容 */
```

在实现中，数组的名字指向数组的第一个元素的地址。下面定义一个类型指针y。一般来说，如果使用char *y的方式定义，那么*y本身是一个指针，y本身是一个地址
```c
       char *y;
       char x[100];
```
以下的两种取值方式是一样的。这里y是定义好的地址，所以使用&符号取第一个元素的地址，然后赋值给y，就可以通过y得到数组第一个元素的地址。同时，数组的名字也表示的是数组第一个元素的地址，因此直接使用y=x的赋值方式和第一种赋值方式是等价的
```c
       y = &x[0];
       y = x;
```

所以*y即指向数组的第一个地址保存的元素。同理，已知*(y)指向的是第一个地址的元素，*(y+1)则指向的是第二个地址的元素
```c
       *(y+1)  gives x[1]
       *(y+i)  gives x[i]
```
进一步的，y如果本身是地址，那么y++则表示的是数组的下一个位置的地址
```c
               y = &x[0];
               y++;
```
应用举例，用这种方法可以计算一个字符数组（char array）的长度。要强调的是，一般char array的最后一个字符是`\0`。

老方法是：
```c
       length(s)
          char s[ ]; {
               int n;
               for( n=0; s[n] != '\0'; )
                       n++;
               return(n);
       }
```
使用指针的方法是：
```c
       length(s)
          char *s; {
               int n;
               for( n=0; *s != '\0'; s++ )
                       n++;
               return(n);
       }
```
使用指针的方法可以写得更加紧凑：
```c
               for( n=0; *s++ != '\0'; n++ );
```
这里的*s++表示的是首先取当前的地址s的元素，然后和'\0'比较之后，对s执行++的操作。总结来说，两个行为都是围绕地址s本身进行运算的。

同理我们可以写出这样的字符串拷贝函数：
```c
       strcopy(s,t)
          char *s, *t; {
               while(*t++ = *s++);
       }
```

```c
	    int item = 100;
	    int *pitem = &item;
	    int **ppitem = &pitem;
```

## 17. Function Arguments

该函数的作用是元素交换。定义来两个指针*x和*y。当然，同时也就定义来两个地址x和y。当我们要调用这个函数的时候，定义的是指针，那么传值需要传递元素所在的地址。

```c
   flip(x, y)
      int *x, *y; {
           int temp;
           temp = *x;
           *x = *y;
           *y = temp;
   }
```
函数的调用：
```c
       flip (&a, &b);
```
为什么函数中定义的是指针，却要传递地址呢？因为虽然定义的是指针，但是接收传入参数的时候首先接收的是地址，然后星号*会把地址中的元素读取出来


## 18. Multiple Levels of Pointers; Program Arguments（指针的指针*）
使用c程序接收来自命令行的输入参数，这里需要使用双重指针。这里的argv[0]是命令本身。
```c
       main(argc, argv)
          int argc;
          char **argv; {
               int i;
               for( i=1; i < argc; i++ )
       }
```
如果我们希望一个程序在命令行中是这样被执行的：
```shell
       prog -abc arg1 arg2 ...
```
```c
       main(argc, argv)
          int argc;
          char **argv; {
               ...
               aflag = bflag = cflag  = 0;
               if( argc > 1 && argv[1][0] == '-' ) {
                       for( i=1; (c=argv[1][i]) != '\0'; i++ )
                               if( c=='a' )
                                       aflag++;
                               else if( c=='b' )
                                       bflag++;
                               else if( c=='c' )
                                       cflag++;
                               else
                                       printf("%c?\n", c);
                       --argc;
                       ++argv;
               }
               ...
          }
```

## 19. The Switch Statement; Break; Continue

```c
       if( c == 'a' ) ...
       else if( c == 'b' ) ...
       else if( c == 'c' ) ...
       else ...
```

```c
       switch( c ) {

       case 'a':
               aflag++;
               break;
       case 'b':
               bflag++;
               break;
       case 'c':
               cflag++;
               break;
       default:
               printf("%c?\n", c);
               break;
       }
```

## 20. Structures
```c
        struct Books
        {
        char  title[50];
        char  author[50];
        char  subject[100];
        int   book_id;
        } book;
```

## 21. Initialization of Variables
```c
       int     x       0;      /* "0" could be any constant */
       int     a       'a';
       char    flag    0177;
       int     *p      &y[1];  /* p now points to y[1] */
       int     x[4]    {0,1,2,3};  /* makes x[i] = i */
       int     y[ ]    {0,1,2,3};  /* makes y big enough for 4 values */
       char    *msg    "syntax error\n";   /* braces unnecessary here */
       char *keyword[ ]{
               "if",
               "else",
               "for",
               "while",
               "break",
               "continue",
               0
       };
```
## 22. Scope Rules: Who Knows About What


