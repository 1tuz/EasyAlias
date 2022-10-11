from os import system as sys
import re


print(50 * "*")
print("EasyAlias by Anton Yachmenyov")
print(50 * "*")


def intro():
    print("Syntax : ealias -[key]")
    print(50 * "*")
    print("""Usage : \n -h - help\n -a - automatically makes alias from current path and filename\n -m - manually "
    makes alias(default)
    """)




intro()

loop = True
while loop:

    
        q2 = input("Type filename and flag... \n")
        
        def question():
            q1 = input("Do you want to continue? y/n : ")
            if q1 == "y":
                q2
            elif q1 == "n":
                print("Bye!")
                break
            else:
                print("Bad option!")
                intro()
                q1

        if "-a" in q2:
            print("Choosed '-a' flag! Alias will be created automatically from the filename and current directory")
            regular = re.findall(r'^\w+', q2)
            clear = regular[0]
            cmd = f"DIR=$(pwd) && FOL=$(pwd | sed 's:.*/::') && echo $FOL=bash $DIR/{clear}" >> /data/data/com.termux/files/home/.zshrc""
            sys(cmd)
            question

        elif "-h" in q2:
            intro()
            
        elif "-m" in q2:
            print("Running adding aliases manually...")
            aliass = input("Enter the new alias : ")
            pipee = input("Enter the pipe : ")
            cmd2 = f"echo alias {aliass}=\"{pipee}\" >>~/.zshrc"
            sys(cmd2)
            print("Alias was added successfuly to .zshrc !")
            question
        else:
            print("Running adding aliases manually...")
            aliass = input("Enter the new alias : ")
            pipee = input("Enter the pipe : ")
            cmd2 = f"echo alias {aliass}=\"{pipee}\" >>~/.zshrc"
            sys(cmd2)
            print("Alias was added successfuly to .zshrc !")
            question