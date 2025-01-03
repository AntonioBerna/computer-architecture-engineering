# :bomb: Defusing a Binary Bomb

## Introduction

The evil _Dr. Male_ planted a slew of "binary bombs" on our department's machines. A binary bomb is a program that consists of a sequence of phases. Each step requires a certain string to be inserted into `stdin`. If the correct string is entered, then the phase is _defused_ and the bomb advances to the next phase. Otherwise, the bomb _explodes_ by printing `BOOM!!!` and then terminating.    
The bomb is defused when all phases are defused.

Too many bombs have been planted and we alone cannot handle them. For this reason we give each student a bomb to defuse. Your mission, which you cannot refuse, is to defuse your bomb before the date on which it expires. Good luck, and welcome to the _bomb squad_!

![](.github/artwork/bomb.png)

## Step 1: Unload your bomb

To get your bomb, you _must commit to this repository_. Edit the `get_bomb.txt` file by inserting your serial number. An Action will be activated on GitHub which will add an archive called `bomb.zip` to the repository. A version is provided for Linux, Windows and MacOS: you can use whichever you prefer, they are equivalent.

If an error occurs while recovering the bomb, a description of the error will be placed in the `ERROR.txt` file.

> [!WARNING]
> The bomb is for x86 processors, so if you have a Mac with M1 or M2, you need to enter a terminal configured for x86:
>
>    ```bash
>    env /usr/bin/arch -x86_64 /bin/zsh --login
>    ```
> In this environment the bomb has not been tested, therefore its functioning is not guaranteed.

## Phase 2: Defuse the bomb (and get bonus points)

Your job for this task is to defuse your bomb. The computer on which
execute the bomb must be connected to the Internet, otherwise the professor will not be able to evaluate
your solution and award you bonus points. Pay attention because we have been 
inform yourself that Dr. Evil is truly evil and has inserted some devices into the bomb
who notice if the bomb has been tampered with.

Despite this caveat, you can really do whatever you want with your bomb. Just remember
that this will be evaluated based on what we receive, not on what you tell us you have
done on your computer. In other words: at the end of the task, the inputs you entered to defuse the various phases will be verified.

You can use various tools to defuse your bomb. Read the _tips_ section for tips and ideas.

Each time the bomb explodes 2 points are deducted from the score. Each defused phase gives 10 points. Then there are additional points hidden inside the bomb that you can try to find.

The stages become progressively more difficult, although the experience gained in the previous stages should still make the later stages easier. The last stage is still challenging even for the best, so try not to leave it to the last minute.

The bomb ignores blank lines in input. If you run the bomb with a command line argument, for example:

```bash
./bomb solution.txt
```

it will read the lines from the `solution.txt` file up to `EOF` (end of file) and then read from `stdin`. In a moment of weakness, Dr. Male introduced this feature, so you won't need to rewrite the solutions to the stages you've already defused every time.

To avoid accidentally detonating the bomb, you will have to learn to move through the disassembled code step by step and make extensive use of breakpoints. You will also need to learn to inspect the state of registers and memory. One of the side effects of this homework is that you will become quite good at using the debugger. It's a skill that will come in quite handy when you develop code for this course and throughout your career.

## Logistics

This homework is an individual project. The delivery is electronic and only the ranking and what we receive on our servers are valid for the bonus points. The professor reserves the right not to award bonus points at his complete discretion when correcting your solution. Any clarifications and corrections will be announced on the course noticeboard on Teams.

## Delivery

There is no explicit delivery. The bomb will continue to update your progress as you work on it. Upon expiration, the bomb will simply stop functioning properly.

You can track your progress and that of other students by going to the [rankings](https://bombs.alessandropellegrini.it/2425) page. This page updates in real time to show the status of all bombs.

## Tips (read carefully!)

There are various ways to defuse your bomb. You can examine the assembly code in detail without ever running it to understand exactly how it behaves. This technique is very useful, but it is not always easy. You can also run the bomb inside a debugger, watching what it does step by step, using the information you gather to defuse it. This is probably the quickest technique.

We ask you, however, to avoid adopting a _brute force attack_ technique: you could write a program that tests all possibilities to find the right solution for each stage. However, this approach is not good for more than one reason:

- Every time the bomb explodes, you lose two points. The probability of finishing last is 100%.

- You don't know how long the strings to provide as input are, nor do you know which characters they are made up of. Even if you made the (_incorrect_) assumption that the strings are at most 80 characters long and contain only lowercase letters, you would have to try $26^{80}$ combinations for each step. Even with a modern computer, you wouldn't finish before the delivery date.

- As you interact with the bomb, it contacts our servers to update the ranking in real time. Even if Dr. Male was foresighted and implemented a form of request throttling, you could easily saturate the server's bandwidth, creating a disruption to the entire class.

There are various tools that are designed to help you understand how a program works and what's wrong when it doesn't work. Below is a list of some tools you may find useful for bomb analysis, with guidance on how to use them. Many of them are available for all operating systems, you just need to find them.

- `gdb`/`lldb`: these are command line debuggers, available on virtually any platform. You can move through the program line by line, examine the memory and registers, look at both the source code and the assembly code (unfortunately Dr. Male didn't leave us the sources...), set breakpoints, set watchpoints in memory, and even write scripts in Python.

- `objdump -t`: the `objdump` command allows you to extract various information from a compiled binary. Using it with the `-t` flag will print the symbol table. The symbol table contains the names of all functions and all global variables present in the bomb, the names of all functions that the bomb calls, as well as their addresses. You can find out something by looking at the function names!

- `objdump -d`: with this flag the command disassembles the bomb. You can also watch individual features. Reading the assembly code can help you understand how the bomb works. While `objdump -d` will give you a lot of information, it can't tell you the whole story like `gdb`. In fact, many "magical" things happen after a program has been started, because between the _program_ and the _process_ there is a lot of complex work that the operating system and the standard library do in concert. You'll discover all this in future courses, but the effect is that in some cases a call to `scanf` can become something cryptic like:
    ```
    8048c36:  e8 99 fc ff ff  call   80488d4 <_init+0x1a0> 
    ```

- `strings`: this tool shows all the printable strings that are present in the bomb.

Are you looking for a particular instrument? Do you want to know how to best use the ones that have been described? It's time to read the documentation! Never forget about commands like `apropos`, `man` or `info`: they are your friends and can provide you with a lot of information far beyond simple library calls or command line programs. For example, `man ascii` also gives you information about typical encodings used by strings in C. `apropos gdb` will give you more information than you can handle about `gdb`. `info gas` will give you more than you ever wanted to know about the GNU assembler. Furthermore, the web can also be a treasure trove of information.  If you find yourself in difficulty, do not hesitate to ask your professor for help, aware however that he too is dealing with bombs to defuse and may not be able to give you useful advice.
