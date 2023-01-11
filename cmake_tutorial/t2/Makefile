CC := clang
CXX := clang++ # 可通过 make CXX=g++ 形式覆盖，如make hello CXX=g++

.PHONY: all
all: hello

# 在objects后面加上answer.o目标文件
objects := main.o answer.o

answer: $(objects)
	$(CXX) -o $@ $(objects)


#
# Make可以自动推断.o目标文件需要依赖同名的.cpp文件
# 所以其实不需要在依赖中指定main.cpp和answer.cpp
# 也不需要写编译commands，它知道要用CXX变量制定的命令作为C++编译器
# 
# 这里只需要指定目标文件所依赖的头文件，使头文件变动时可以
# 重新编译对应目标文件
#
main.o: answer.hpp
answer.o: answer.hpp

.PHONY: clean
clean:
	rm -f answer $(objects)