简介
=====
SudaThesis 是苏州大学本科生毕业论文（设计）的 LaTeX 模板，旨在帮助苏州大学本科
毕业生在大学的最后阶段顺利完成毕业论文（设计）。

模板格式按照 2013 年 12 月 20 日发布的《苏州大学本科生毕业设计（论文）工作办法
》中相关排版要求编写，并在部分格式细节上允许使用者进行灵活选择。

如需使用本模版编写毕业论文，使用者需对 LaTeX 的相关基础知识有所了解。

*本模板目前暂未针对苏州大学硕士、博士论文或其他学术论文格式进行相关优化。*

功能介绍
-----
SudaThesis 模板当前可提供如下功能：
>
- 标题字体自动设置
- 段落首行自动缩进两个中文字符宽度
- 自动中英文摘要与关键词排版
- 自动页眉、页码生成
- 自动章节目录生成
- 自动图表目录生成
- 支持部分格式矢量图插入
- 支持代码引用及语法高亮
- 支持号制中文字号使用
- 支持自动插图、表格管理
- 支持参考文献管理及引用
- 部分参考文献支持自动文献标识符设置
- 目录支持中文或数字两种章节编号格式
- 支持选择 Windows 预置的中易字体以及 Adobe 中文字体
- 自动生成 PDF 文件内引用链接

排版格式
-----
>
- 论文大标题：二号黑体，居中，上空 1.5 行，下空 1 行
- 正文一级标题：小三号黑体，居中，上下各空一行
- 正文二级标题：四号黑体，顶格，上下各空一行
- 正文三级标题：小四号黑体，缩进两字
- 正文四级标题：小四号宋体，缩进两字，正文接后
- 正文字体：小四号宋体，基线行距固定值 22 磅
- 目录标题：四号宋体，居中
- 目录一级标题：四号黑体，行距 22 磅
- 目录二级标题：四号宋体，行距 22 磅，缩进两字
- 表格及插图标题：五号黑体，居中
- 特殊章节标题：小三号黑体，居中，上下各空一行
- 页边距：上 2cm，下 2cm，左 2.5cm，右 1.5cm，装订线 0.5cm
- 页眉：1.2cm，居中，小五号宋体，内容为“苏州大学本科生毕业设计（论文）”
- 页脚：1.5cm，插入页码，居中
- 中文摘要和关键词单独一页
- 英文摘要和关键词单独一页

**注意**：由于中易宋体（SimSum）等中文字体并不存在真正意义上的粗字体，伪粗体方
案会造成印刷质量问题，因此本模版对于正文中相关部分标题理应采用宋体的部分使用了
黑体替换，以实现最佳印刷效果。


模板说明
=====

Git 版本库分支
-----
- master: SudaThesis 模板主分支，用于发布模板的稳定版本。用户可使用 Git 获取本
分支来更新模板。注意在更新时，在 `sudathesis.cls` 文件中如存在由用户自行修改的
内容，则相关部分将不会保留，用户需要在更新后重新定义，或者直接在论文主文件中做
相关格式申明以避免此问题发生。
- thesis-dev: SudaThesis 模板的功能开发分支，包含最新新增功能与部分已完成但未
正式发布的 bug 修正。此分支中的模板并非稳定版本，使用时需加以区分。
- example: 此分支包含一个较为完整的模板使用样例，帮助用户理解如何正确使用本模
板。论文主文件编写方式可参考 example 分支下的 `example.tex`。**特别说明**，此
分支内并未包含最终编译完成的二进制 pdf 格式文件，用户如需查看样例的最终效果，
请自行编译或直接访问样例的在线展示版本。

模板文件
-----
- sudathesis.cls: SudaThesis 模板主文件，包含论文排版要求中的各种格式定义。使
用者可按实际需求，参考文件中注释说明，对其中部分格式进行调整。例如修改页边距，
设置默认字体等。
- thesis.bst: 包含用于在 BibTeX 中处理参考文献格式的函数功能。本文件衍生自
Alwin Tsui <alwintsui@gmail.com> 基于 GBT7714-2005N.bst 和 seuthesis.bst 修改
的 scutthesis.bst。
- clean.bat: 用于帮助用户在 Windows 系统下清理临时文件的脚本工具。
- clean.sh: 用于帮助用户在 Linux 或其它类 Unix 系统下清理临时文件的脚本工具。

编写论文
-----
在使用 SudaThesis 模板开始编写论文之前，需要将 `sudathesis.cls` 与
`thesis.bst` 模板文件置于 LaTeX 的索引目录中。或者可以直接将模板目录直接作为论
文 tex 文件的工作目录。

使用模板时，可以参考如下格式规范创建论文主文件，此处为 `thesis.tex`：

    \documentclass{sudathesis}              % 使用模板文档格式 sudathesis.cls
    \graphicspath{{./figures/}}             % 设置插图文件目录

    \usepackage{siunitx}                    % 引用 siunitx 宏包
    \usepackage{esint}                      % 引用 esint 宏包

    \bibliographystyle{thesis}              % 设置参考文献功能函数 thesis.bst

    \title{Title of Thesis}                 % 论文标题
    \author{Author}                         % 论文作者

    \begin{document}                        % 论文主体部分
        \frontmatter                        % 设置摘要前的论文格式
        \tableofcontents                    % 插入章节目录
        \listoffigures                      % 插入插图目录
        \listoftables                       % 插入表格目录
        \papertitle                         % 插入论文标题

        \mainmatter                         % 设置目录之后的论文格式

        \input{./chapters/chapter01.tex}    % 插入正文外部章节内容
        \input{./chapters/chapter02.tex}
        \input{./chapters/chapter03.tex}

        \bibliography{thesis}               % 设置参考文献数据文件 thesis.bib
    \end{document}

正文部分可以使用标准 TeX 语法按章节在外部文件中编写，并在最终用 `\input` 命令
将其插入到正文中。如需使用参考文献功能，使用者还需要创建自己的参考文献数据文件
例如上面示例中的 `thesis.bib`。

更多关于模板详细功能的使用方法，请参考 example 分支下的演示样例文档。

论文编译
-----

正常情况下，使用 BibTex 管理参考文献时，总共需要配合 XeLaTeX 进行四次编译：

    xelatex thesis      # 生成参考文献辅助文件，目录编号辅助文件
    bibtex thesis       # 生成参考文献数据文件
    xelatex thesis      # 生成参考文献编号辅助文件，置入目录
    xelatex thesis      # 置入参考文献编号

若不使用参考文献功能，需要使用 XeLaTeX 进行两次编译：

    xelatex thesis      # 生成目录编号辅助文件
    xelatex thesis      # 置入目录

**注**：`thesis` 为论文主文件文件名，此处即代表`thesis.tex`文件。推荐 LaTeX 新
手使用 Texmaker 等 LaTeX 编辑器来编写论文，以及编译输出等操作。

模板更新
-----
推荐使用 Git 同步 SudaThesis 模板的在线版本库来获取更新，也可自行下载相应分支
的压缩包来对模板主文件 `sudathesis.cls` 和 `thesis.bst` 等进行手动替换升级。

模板兼容性
-----
本模板使用环境不受操作系统限制，但是用户必须提供必要的 LaTeX 环境。SudaThesis
模板需要使用 XeLaTeX 配合 BibTeX (引用参考文献) 进行编译，并且使用了 xeCJK 宏
包实现中文排版。所以推荐使用 TUG 的 TeXLive 或者国内流行的 CTeX 套装作为 LaTeX
 编译环境。

- TeXLive: [https://www.tug.org/texlive/](https://www.tug.org/texlive/)
- CTEX: [http://www.ctex.org/HomePage](http://www.ctex.org/HomePage)

版权说明
-----
因为 SudaThesis 模版引用了采用 GNU 通用公共许可协议第三版（GPLv3）的
 scutthesis 模板中的部分内容，所以 SudaThesis 模版也采用 GPLv3 许可证发布，相
关许可证内容已随模板发布。请勿将此模版应用于**涉密论文**或**商业论文**。


技术支持
=====
在本模板的使用过程中，如果遇到任何关于模板的问题或发现任何模板 bug，欢迎在
Github 的 Issue Tracking 区域发布讨论。另外也可以向本项目维护者直接发送邮件：
<me@huhamhire.com>。
