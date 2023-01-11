# := 用于给变量赋值
#
# 一般全大写变量用来表示允许调用make的时候传入的变量
# 全小写变量表示仅在内部使用的变量
#
# 这里的CC和CXX指定了要使用的C和C++编译器

CC := clang
CXX := clang++ # 可通过 make CXX=g++ 形式覆盖，如make hello CXX=g++

# 要构建某个指令时，使用如下命令：
# make target_name
# .PHONY表示all不是一个会真实生成的文件，而是一个伪目标

.PHONY: all
all: hello

# 由于后面要多次使用main.o等目标文件列表，这里赋值给变量objects

objects := main.o

# hello是我们最终要生成的可执行文件名，它依赖objects中的所有目标文件
# 它的commands部分使用CXX指定的编译器将所有目标文件链接成hello可执行文件

hello: $(objects)
	$(CXX) -o $@ $(objects) # $@ 是自动变量，表示 target 名

# main.o目标文件依赖main.cpp源文件
main.o: main.cpp
	$(CXX) -c main.cpp

# clean用于且清除构建生成的临时文件、目标文件和可执行文件。
# 和all类似，它是一个伪目标
.PHONY: clean
clean:
	rm -f hello $(objects)