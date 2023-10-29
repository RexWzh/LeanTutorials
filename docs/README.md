# Lean 学习教程

Lean 学习资料和笔记的汇总，顶部选择“笔记与翻译”可以查看目前已做的文档翻译和笔记。

## Lean 简介

Lean 是微软研究院基于依赖类型理论(dependent type theory)开发的交互式定理证明器，同时它也是一门编程语言，并且设计为一般性目的的编程语言。

当被视为编程语言时，Lean 是一种具有**依赖类型**的**严格**的**纯函数式**语言(strict pure functional with dependent types)。具体地说，
1. 严格：LEAN 与其他编程语言一样地使用函数
2. 函数式：函数是一等公民，函数可以作为参数传递，也可以作为返回值返回
3. 纯函数式：没有边际效应(side-effects)，函数执行结果是确定的，没有副作用
4. 依赖类型：这是 LEAN 最不同寻常的一个特性，其将类型也视为一等公民，允许类型包含程序，程序计算类型。

在形式化方面，Lean 提供了一套严格的逻辑和数学框架，使得用户可以进行精确的推理和证明。这个特性使得 Lean 在数学和计算机科学研究中非常有用，它可以帮助研究人员发现和改正概念上的错误，同时也让他们能够更深入地理解其研究主题。

## 安装教程

安装参考 [社区文档](https://leanprover-community.github.io/get_started.html)，以 Ubuntu 系统为例，使用脚本一键安装

```bash
wget -q https://raw.githubusercontent.com/leanprover-community/mathlib4/master/scripts/install_debian.sh && bash install_debian.sh ; rm -f install_debian.sh && source ~/.profile
```

该代码除了安装 LEAN，也安装了管理工具 elan ，编译工具 lake(lean make 的缩写) 和 Vscode 的 LEAN 拓展等内容。

重启终端，命令行检查 `elan` 版本
```bash
❯ elan --version
elan 2.0.1 (04475bbb5 2023-07-24)
```

如果命令不存在可以尝试修改环境变量
```bash
export PATH="$HOME/.elan/bin:$PATH"
```

安装过程需下载 GitHub 资源，通常要开代理才能正常执行。

