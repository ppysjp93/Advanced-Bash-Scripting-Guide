# Exercise 1
echo Exercise 1
for ((i=1; i<10; ++i)); do
    echo Random Number $i:
    echo | awk " { srand($i); print rand() } "
done

echo

# Exercise 2
echo Exercise 2
Max=100
Min=10
for ((i=1; i<10; ++i)); do
    echo Random Number $i:
    echo | awk " { srand($i); print rand()*($Max - $Min) + $Min } "
done

echo

# Exercise 3
# "printf %.0f $float" rounds numbers in bash.

echo Exercise 3
Max=100
Min=10
for ((i=1; i<10; ++i)); do
    echo Random Number $i:
    echo | awk -v min=10 -v max=100 "BEGIN{srand($i); print int(min+rand()*(max-min+1))}"
done



