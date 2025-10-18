
##  项目结构

```
lab2/
├── lexical.l        # Flex 词法分析定义文件
├── syntax.y         # Bison 语法分析定义文件
├── Tree.c / Tree.h  # 抽象语法树模块
├── semantic.c / semantic.h  # 语义分析模块
├── main.c           # 主程序入口
├── Makefile         # 自动化编译脚本
├── SampleTest.sh    # 测试 SampleTest 文件夹下的所有测试用例
├── Test.sh          # 测试 Test 文件夹下的所有测试用例
└── test1-23.sh      # 测试实验指导中的 1-23 个测试用例
```



## 环境要求

编译本项目需要以下工具：

|工具|用途|安装命令（Ubuntu）|
|---|---|---|
|**gcc**|C语言编译器|`sudo apt install build-essential`|
|**make**|自动化编译工具|`sudo apt install make`|
|**flex**|词法分析器生成器|`sudo apt install flex`|
|**bison**|语法分析器生成器|`sudo apt install bison`|


##  编译步骤

1. **进入项目目录**
    

```bash
cd ~/Desktop/compile-lab/lab2_all/lab2
```

2. **使用 Make 自动编译**
    

```bash
make
```

若编译成功，将生成可执行文件：

```
parser
```


##  运行测试

运行编译得到的 `parser` 可执行文件，可对 `.cmm` 源程序进行语法和语义分析：

```bash
./parser ../Test/1.cmm   # 测试 Test 文件夹下的单个用例
```

使用测试脚本测试不同的测试集：

```bash
bash SampleTest.sh   # 测试 SampleTest 文件夹下的所有测试用例
bash Test.sh         # 测试 Test 文件夹下的所有测试用例
bash test1-23.sh     # 测试实验指导中的 1-23 个测试用例
```

测试结果将显示在终端。


##  清理生成文件

删除编译生成的中间文件和可执行文件：

```bash
make clean
```


