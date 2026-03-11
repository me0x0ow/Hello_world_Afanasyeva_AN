#!/bin/bash

FILE="students.txt"

echo "--- Оценка выше 80 ---"
awk '$2 > 80' $FILE

echo "" 
echo "--- Оценка ниже 70 ---"
awk '$2 < 70' $FILE

echo ""

echo "--- Первая строка файла ---"
awk 'NR == 1' $FILE
