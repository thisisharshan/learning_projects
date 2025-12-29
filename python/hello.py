import sys

def check_setup():
    # If font ligatures are working, the '!=' and '->' will look like single symbols
    print(f"Python Version: {sys.version}")
    print("Setup is frictionless! 🚀")

if __name__ == "__main__":
    check_setup()