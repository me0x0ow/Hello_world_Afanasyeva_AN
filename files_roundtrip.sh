#!/bin/bash

echo "Начинаем создание файлов..."

for i in {1..10}
do
    touch "test$i.txt"
    echo "Файл test$i.txt создан."
done

echo -e "\nВсе файлы созданы. Начинаем удаление в обратном порядке...\n"
count=10

while [ $count -ge 1 ]
do
    filename="test$count.txt"    
    if [ -f "$filename" ]; then
        rm "$filename"
        echo "Файл $filename успешно удален."
    fi
    count=$((count - 1))
done

echo "Готово! Все временные файлы очищены."
