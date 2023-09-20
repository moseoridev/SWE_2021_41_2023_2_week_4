#!/bin/bash
for i in files/*; do
    firstchar=${i:6:1}
    firstchar_num=$(printf '%d\n' "'$firstchar")
    if (($firstchar_num < 97)); then
        firstchar_num=$(($firstchar_num + 32))
    fi
    final_char=$(printf \\$(printf '%03o' $firstchar_num))
    mv $i "./$final_char"
done
