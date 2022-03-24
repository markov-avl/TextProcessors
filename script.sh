#!/bin/bash

# Инициализация
./generator.sh
touch file2 file3

# Выбрать из file1 40 последних строк и записать в file2
tail -n 40 file1 > file2

# Записать первые 10 строк из file2 в file3
head file2 > file3

# Выбрать в file2 все строки которые содержат "коко", заменить строку "коко" на "куку" и дописать только первые три вхождения в file3
sed 's/коко/куку/g' file2 | grep 'куку' | head -n 3 >> file3

# Оставить только уникальные строки в file3 и получить количества каждой уникальной строки в виде: КОЛ-ВО СТРОКА
sort file3 | uniq -u | tee file3 | while read line; do echo "$( grep -F "$line" file3 | wc -l ) $line"; done