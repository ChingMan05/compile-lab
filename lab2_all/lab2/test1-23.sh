#!/bin/bash

TEST_DIR="../Test"
PARSER="./parser"

echo "开始测试 test1.cmm ~ test23.cmm ..."
echo ""

count=0
for i in $(seq 1 23); do
    cmm_file="$TEST_DIR/test${i}.cmm"
    if [ -f "$cmm_file" ]; then
        count=$((count + 1))
        echo "========== 测试 $count: test${i}.cmm =========="
        $PARSER "$cmm_file"
        echo ""
    else
        echo "跳过：未找到文件 test${i}.cmm"
        echo ""
    fi
done

echo "测试完成！共测试 $count 个文件。"
