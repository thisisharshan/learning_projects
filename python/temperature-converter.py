#Convert temperature into Farenheit or celcius

t = float(input("Enter Temperature = "))
unit = str(input("Farenheit or Celcius (f or c)?"))
print("Calculating weight....")

if unit == "f": #bruh I'm keep forgetting to enclose withh ""
    f = (32 - t) * 5/9 
    print("\n")
    print("The result is...")
    print (f"\n{t} = {round(f,2)}")

elif unit == "c":
    c = (9 * t)/5 + 32
    print("\n")
    print("The result is...")
    print (f"\n{t} = {round(c,2)}")
else:
    print("Sorry, not valid.")

