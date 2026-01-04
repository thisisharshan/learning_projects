#Weight converter program

weight = float(input("Enter Weight = "))
temp = weight
command = str(input("kgs or lbs? = ")).lower() 

if command == "kgs": #I forgot the difference between assignment operator and equality operator bruhhh
    weight = weight * 2.205
    unit = "kgs"

elif command == "lbs":
    weight = weight / 2.205
    unit = "lbs"

else:
    print("Invalid command.")
    unit = 0

print(f"{temp}n = {round(weight, 2)}{unit}")