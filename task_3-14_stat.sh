#!/bin/bash

FILE="students.txt"

if [[ ! -f "$FILE" ]]; then
    echo "Ошибка: файл $FILE не найден."
    exit 1
fi

awk '
{
sum += $2              
    
  
    if (NR == 1) {          
        max = $2           
    } else if ($2 > max) {  
        max = $2            
    }
}
END {
   
    if (NR > 0) {
        print "--- Статистика по студентам ---"
        print "Сумма всех оценок: " sum
        print "Средняя оценка: " sum / NR
        print "Максимальная оценка: " max
    } else {
        print "Файл пуст или данные некорректны."
    }
}' "$FILE"
