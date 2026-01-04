#example 1 - ticket checker

ticket = [100,120,171]
chk = int(input("What is your ticket number?\t"))
access = "Allowed\n" if chk == ticket else "Not allowed"
print (access)

# temp = int(input("What is the temperature currently?\t"))
# print("The temperature is hot") if temp > 30 else print("The temperature is cool")
