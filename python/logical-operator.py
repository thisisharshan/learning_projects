#program to recommend car to a customoser

print("Hello customer: \nNice to meeting you\n")
choice = int(input("Please share your budget!"))
if choice < 25000 and choice > 2000:
    print("Bmw is the nice car for you!")

elif choice > 25000 or choice < 30000:
    print("Lamborghini is the best car for you!")

elif not choice < 25000:
    print("Mercedez benz or audi may suit you!")

response = str(input("What'S you choice sir?"))
if response == "benz" or "audi" or "bmw" or "lamborghini":
    print(f"Great choice sir {response} is perfect for you!")

else:
    print("Pls get TF out!")