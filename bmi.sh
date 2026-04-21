#!/bin/bash

read -p "Введите вашу массу (в кг): " mass
read -p "Введите ваш рост (в метрах, например 1.75): " height

if [[ -z "$mass" || -z "$height" ]]; then
    echo "Ошибка: необходимо ввести и массу, и рост."
    exit 1
fi

bmi=$(awk "BEGIN {print int($mass / ($height * $height))}")

echo "Ваш индекс массы тела (ИМТ): $bmi"
