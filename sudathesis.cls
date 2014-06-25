%
% sudathesis.cls - Document class definition file
% This is the LaTeX template for bachelor's thesis in Soochow University
% by Hamhire Hu <me@huhamhire.com>, April 2014
%

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{sudathesis}
    [2014/03/30, Bachelor's thesis, Soochow University, Suzhou]

\LoadClass[12pt, a4paper, openany, oneside]{book}

% 可能需要用到的包
\RequirePackage{amsmath}
\RequirePackage{mathpazo}
\RequirePackage{rotating}

% 页边距设置要求：上 2cm，下 2cm，左 2.5cm，右 1.5cm，装订线 0.5cm
\RequirePackage[top=2cm, left=3cm, bottom=2cm, right=1.5cm]{geometry}

% 下面的包设置列表行距为 0
\RequirePackage{enumitem}
\setlist{nolistsep}

%% 首行缩进两个字
\setlength{\parindent}{2em}

%% 字体设置
%  使用xeCJK包
\RequirePackage[BoldFont, SlantFont, CJKnumber]{xeCJK}
\RequirePackage{type1cm}
%\rmfamily 使用的字体,默认英文和数字的字体。
\setmainfont[Mapping=tex-text]{Times New Roman}
%\ttfamily 使用的等宽字体
\setmonofont[Mapping=tex-text]{Consolas}
%\setmonofont[Mapping=tex-text]{Courier New}
%采用中文断行方式
\XeTeXlinebreaklocale "zh"
%字元间可加入0pt~1pt 的弹性间距，这样才能排出左右对齐的段落。
\XeTeXlinebreakskip = 0pt plus 1pt

% Windows 标准中易字体
\setCJKmainfont{SimSun}
\setCJKfamilyfont{song}{SimSun}
\setCJKfamilyfont{hei}{SimHei}
\setCJKfamilyfont{kai}{KaiTi_GB2312}
\setCJKfamilyfont{fang}{FangSong_GB2312}

% 华文字体
%\setCJKmainfont{STSong}
%\setCJKfamilyfont{song}{STSong}
%\setCJKfamilyfont{hei}{STHeiti}
%\setCJKfamilyfont{kai}{STKaiti}
%\setCJKfamilyfont{fang}{STFangsong}

% Adobe 字体
%\setCJKmainfont{Adobe Song Std}
%\setCJKfamilyfont{song}{Adobe Song Std}
%\setCJKfamilyfont{hei}{Adobe Heiti Std}
%\setCJKfamilyfont{kai}{Adobe Kaiti Std}
%\setCJKfamilyfont{fang}{Adobe Fangsong Std}

% 方正字体
%\setCJKmainfont{FZShuSong-Z01S}
%\setCJKfamilyfont{song}{FZShuSong-Z01S}
%\setCJKfamilyfont{hei}{FZHei-B01S}
%\setCJKfamilyfont{kai}{FZKai-Z03S}
%\setCJKfamilyfont{fang}{FZFangSong-Z02S}

%% 定义中文字体名称
\newcommand{\songti}{\CJKfamily{song}}      % 宋体
\newcommand{\heiti}{\CJKfamily{hei}}        % 黑体
\newcommand{\kaiti}{\CJKfamily{kai}}        % 楷体
\newcommand{\fangsong}{\CJKfamily{fang}}    % 仿宋

%% 定义字号
\newcommand{\chuhao}{\fontsize{42pt}{63pt}\selectfont}
\newcommand{\xiaochu}{\fontsize{36pt}{54pt}\selectfont}
\newcommand{\yihao}{\fontsize{26pt}{39pt}\selectfont}
\newcommand{\xiaoyi}{\fontsize{24pt}{36pt}\selectfont}
\newcommand{\erhao}{\fontsize{22pt}{33pt}\selectfont}
\newcommand{\xiaoer}{\fontsize{18pt}{27pt}\selectfont}
\newcommand{\sanhao}{\fontsize{16pt}{24pt}\selectfont}
\newcommand{\xiaosan}{\fontsize{15pt}{22.5pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{21pt}\selectfont}
\newcommand{\xiaosi}{\fontsize{12pt}{18pt}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{15.75pt}\selectfont}
\newcommand{\xiaowu}{\fontsize{9pt}{13.5pt}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5pt}{11.25pt}\selectfont}
\newcommand{\xiaoliu}{\fontsize{6.5pt}{9.75pt}\selectfont}
\newcommand{\qihao}{\fontsize{5.5pt}{8.25}\selectfont}
\newcommand{\xiaoqi}{\fontsize{5pt}{7.5}\selectfont}

% 常规字体：小四号宋体
\renewcommand{\normalsize}{
    \xiaosi\songti\normalfont
    % 正文行距固定值22磅
    \setlength{\baselineskip}{22pt}
}

% 摘要之前的页面格式
\renewcommand\frontmatter{
    \pagestyle{fancy}

    \pagenumbering{roman}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footskip}{0.5cm}
    \fancyhead{}
    \fancyfoot[C]{\thepage}
}

\RequirePackage{fancyhdr}
\addtolength\headheight{1.6pt}
% 摘要开始正文的页面格式
\renewcommand\mainmatter{
    \pagestyle{fancy}
    \pagenumbering{arabic}
    \renewcommand{\topskip}{0.8cm}
    \renewcommand{\footskip}{0.5cm}
    \renewcommand{\headrulewidth}{0.4pt} %页眉线宽，设为0可以去页眉线
    \fancyhead{}
    \fancyhead[C]{\xiaowu\songti 苏州大学本科生毕业设计（论文）}
    \fancyfoot[C]{\thepage}
}

%  插入图片
\RequirePackage{graphicx}
% 如果插入的图片没有指定扩展名,那么依次搜索下面的扩展名所对应的文件
\DeclareGraphicsExtensions{.pdf, .eps, .jpg, .png}
\RequirePackage{subfig}         % config兼容subfigure命令
\RequirePackage{float}          % 可以使用［H］命令
\RequirePackage{caption}        % 定义图的标题格式：居中. 使用caption3.0
\DeclareCaptionFont{capFont}{\wuhao\heiti} % 表格标题及插图标题
\DeclareCaptionLabelSeparator{figseparator}{\quad}
\captionsetup{
    labelsep          = figseparator,
    belowskip         = 0pt,
    aboveskip         = 11pt,
    font              = {capFont},
    figurename        = 图,
    tablename         = 表,
    listfigurename    = 插图目录,
    listtablename     = 表格目录
}
\captionsetup[figure]{
    position          = bottom
}
\captionsetup[subfloat]{
    captionskip       = 6bp,
    nearskip          = 0bp,
    farskip           = 0bp,
    topadjust         = 0bp,
    justification     = centering
}
\renewcommand\arraystretch{2}     % 表格默认行高

\newcommand*{\noaddvspace}{\renewcommand*{\addvspace}[1]{}}
\addtocontents{lof}{\protect\noaddvspace}   % 清除插图目录段落间距
\addtocontents{lot}{\protect\noaddvspace}   % 清除表格目录段落间距

%TODO 插图的注释尚未实现

\AtBeginDocument{\setlength{\baselineskip}{22pt}}

\setcounter{secnumdepth}{4}     % 设定章节计数深度
\setcounter{tocdepth}{1}        % 设置目录计数深度

%%% 目录格式
\RequirePackage{titletoc}
% 目录标题，四号黑体，居中
\renewcommand{\contentsname}
    {\sihao\heiti 目\quad 录}
% 一级标题：四号黑体，行距 22 磅
\titlecontents{chapter}[0pt]
    {\sihao\heiti\setlength{\baselineskip}{22pt}}
    {第{\thecontentslabel}章\quad}   % 目录中文章节样式
    %{\thecontentslabel\ }           % 目录数字章节样式
    {}
    {\titlerule*[10pt]{$\cdot$}\contentspage}
% 二级标题：四号宋体，行距 22 磅，缩进两字
\titlecontents{section}[2em]
    {\sihao\songti\setlength{\baselineskip}{22pt}}
    {第{\thecontentslabel}节\quad}   % 目录中文章节样式
    %{\thecontentslabel\ }           % 目录数字章节样式
    {}
    {\titlerule*[10pt]{$\cdot$}\contentspage}

\titlecontents{figure}[0pt]
    {\sihao\songti\setlength{\baselineskip}{22pt}}
    {图{\thecontentslabel}\quad}   % 插图目录中文样式
    {}
    {\titlerule*[10pt]{$\cdot$}\contentspage}

\titlecontents{table}[0pt]
    {\sihao\songti\setlength{\baselineskip}{22pt}}
    {表{\thecontentslabel}\quad}   % 表格目录中文样式
    {}
    {\titlerule*[10pt]{$\cdot$}\contentspage}

%%% 标题格式
%%  大标题：二号黑体，居中，上空1.5行，下空1行
\newcommand{\papertitle}{
    \newpage
    \vspace{1.5em}
    \begin{center}
    \erhao\heiti\@title
    \end{center}
    \vspace{1em}
}

%%  中文摘要
\newenvironment{abstractcn}{
    \phantomsection
    \addcontentsline{toc}{chapter}{中文摘要}
    \noindent
    \xiaosi\heiti 摘\quad 要：
    \normalsize
    \baselineskip    = 22pt
    \hangindent      = 54pt
}{\par}

%%  中文关键词
\newenvironment{keywordscn}{
    \noindent
    \xiaosi\heiti 关键词：
    \normalsize
    \baselineskip    = 22pt
    \hangindent      = 54pt
}{\newpage}        % 中文摘要（和关键词）单独一页

% 英文摘要
\newenvironment{abstracten}{
    \phantomsection
    \addcontentsline{toc}{chapter}{英文摘要}
    \noindent
    \xiaosi Abstract:
    \normalsize
    \baselineskip    = 22pt
    \hangindent      = 62pt
}{\par}

% 英文关键词
\newenvironment{keywordsen}{
    \noindent
    \xiaosi Keywords:
    \normalsize
    \baselineskip    = 22pt
    \hangindent      = 68pt
}{\newpage}        % 英文摘要（和关键词）单独一页

%% 定义各章节标题的格式
\RequirePackage{titlesec}

% 正文一级标题，小三号黑体，居中，上下各空一行
\titleformat{\chapter}{\centering\xiaosan\heiti}
    {第\thechapter 章}{1em}{}
\titlespacing{\chapter}{0pt}{18pt}{14pt}

% 正文二级标题，四号黑体，顶格，上下各空一行
\titleformat{\section}{\sihao\heiti}
    {\thesection}{0.7em}{}
\titlespacing{\section}{0pt}{16pt}{12pt}

% 正文三级标题，小四号黑体，缩进两字
\titleformat{\subsection}{\xiaosi\heiti}
    {\qquad\thesubsection}{0.7em}{}

% 正文四级标题，小四号宋体，缩进两字，正文接后
\titleformat{\subsubsection}[runin]{\xiaosi\songti}
    {\qquad\thesubsubsection}{0.7em}{}

% 结论（小三号黑体，居中，上下各空一行）
\newenvironment{conclusion}{
    \chapter*{结\quad 论}
    \addcontentsline{toc}{chapter}{结\quad 论}
}{}

% 致谢（小三号黑体，居中，上下各空一行）
\newenvironment{acknowledgements}{
    \chapter*{致\quad 谢}
    \addcontentsline{toc}{chapter}{致\quad 谢}
}{}

% 参考文献
\RequirePackage[numbers,super,square,sort&compress]{natbib}
\let\orig@bibliography=\bibliography
\renewcommand{\bibliography}[1]{
    \clearpage
    \xiaosan\heiti        % 参考文献正文字体
    \orig@bibliography{#1}
    \linespread{2}
}

% 扩展了 array 和 tabular 环境功能
\RequirePackage{array}
% 参考文献、索引、表格目录和图形
\RequirePackage[nottoc]{tocbibind}
\renewcommand{\bibname}{参考文献}
\renewcommand{\bibfont}{\xiaosi\songti}

\RequirePackage{hyperref}
\hypersetup{
    colorlinks,
    linkcolor    = black,
    anchorcolor  = black,
    citecolor    = black,
    urlcolor     = black,
}
\urlstyle{same}

% 程序代码引用
\RequirePackage{listings}
\RequirePackage{color}
\definecolor{light-gray}{gray}{0.95}
\newcommand{\code}{\fontsize{10pt}{12pt}\selectfont\ttfamily}
\lstset{
    basicstyle=\code,
    commentstyle=\itshape,
    numbers=left,
    numberstyle=\code,
    backgroundcolor=\color{light-gray},
    showstringspaces=false,
    formfeed=\newpage,
    tabsize=4,
    extendedchars=true,
    escapeinside=``,
    framexleftmargin=-2em,
    numbersep=-1.5em,
    aboveskip=1em
}
