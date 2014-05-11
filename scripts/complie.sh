#!/bin/bash
# 设置论文主文件名
if [[ -z $1 ]]; then
    mainfile=thesis
else
    mainfile=$1
fi
echo "=== Main TeX file is set to \"$mainfile\" ==="
# 编译 tex 文件
echo "=== Compile TeX files ==="
cd ..
xelatex $mainfile       # 生成参考文献辅助文件，目录编号辅助文件
bibtex $mainfile        # 生成参考文献数据文件
xelatex $mainfile       # 生成参考文献编号辅助文件，置入目录
xelatex $mainfile       # 置入参考文献编号
# 清理临时文件
echo "=== Remove temporary files ==="
cd scripts
./clean.sh
