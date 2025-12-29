hear = str(input("Hey there! what are we going to do now? ")).lower()
say = hear

if say == "add":
    a,b = map(int, input("Enter the numbers : ").split())
    s = a+b
    print (f"The sum is {s}")

else:
    print("what the hell are you even trying to say bro?")

