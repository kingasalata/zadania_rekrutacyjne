from collections import Counter

data =  str(input("Podaj ciąg znaków: "))

i = 0
letters = []
for el in data:
    letter = data[i]
    letter = letter.lower()
    letters.append(letter)
    i+=1
    
#print(letters)
freq = Counter(letters).most_common()
print('Zliczone powtórzenia liter:', freq)

    

