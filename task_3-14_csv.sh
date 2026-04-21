#!/bin/bash

FILE="data.csv"

echo "--- Названия товаров ---"
awk -F',' '{print $2}' $FILE

echo -e "\n--- Товары дороже 20 ---"
awk -F',' '$3 > 20 {print $2 " (Цена: " $3 ")"}' $FILE

echo -e "\n--- Общая стоимость ---"
awk -F',' '{sum += $3} END {print "Итого: " sum}' $FILE
