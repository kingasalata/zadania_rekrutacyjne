x = "abcdef"

final_list = []
list1 = []
list2 = []

#poniewaz indeksy w pythonie zaczynaja sie od 0, a wiec nieparzysta pozycja bedzie 0,2,...
for l in range(len(x)):
    letter = x[l]
    if l%2 == 0:
        letter = letter.upper()
    list2.append(letter)

list2 = ''.join(list2)
list1 = list2.swapcase()
#print(list1)
#print(list2)

final_list.append(list1)
final_list.append(list2)
print(final_list)
