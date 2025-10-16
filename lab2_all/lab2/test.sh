#!/bin/bash

TEST_DIR="/home/wancm/Desktop/compile-lab/Test"
PARSER="./parser" 

echo "开始测试所有.cmm文件..."
echo ""

count=0
for cmm_file in "$TEST_DIR"/*.cmm; do
    if [ -f "$cmm_file" ]; then
        count=$((count + 1))
        echo "========== 测试 $count: $(basename "$cmm_file") =========="
        $PARSER "$cmm_file"
        echo ""
    fi
done

echo "测试完成！共测试 $count 个文件。"