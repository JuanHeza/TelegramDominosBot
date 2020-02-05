#Welcome to the comment section of this program! Check out comments for more info on sections as well as explanations for certain things not mentioned in the tutorial itself. Some of the comments are more 'extra tips' whereas the program literally teaches code. Both are good, unless you dislike reading.

#### You can use as many pound signs/hashtags as you'd like to make comments stand out! ####
#(But I tend to only use one...)

#Intro to the program. This is simply puts statements and gets.chomps to get input.
puts "INSTRUCTIONS: Press the enter key after text to continue. If asked for code, input the correct code. Other keywords that can be typed into input boxes will be mentioned."
puts "Try pressing the enter key now!"
#It may seem overboard to assume the user doesn't know to press the enter key, but part of coding programs is assuming the program is for someone who is absolutely clueless. This isn't to offend--simply to get the most usability out of a program. It's not technical so much as common sense, I guess. Always be sure someone who has never even touched a keyboard would be able to use your program.
continue = gets.chomp
puts ""
puts "Welcome to a guide on the basics of Ruby, an object-oriented coding language."
puts ""
puts "Press the enter key or input any other text to begin. But don't go too fast--there's a lot of information coming your way and you should be sure to read through it!"
start = gets.chomp

#You'll soon find this program is mostly gets.chomps, if/else statements, and puts statements. It's a lot of text in quotations. 
puts "Let's begin with the basics, shall we? I'll list a few things about Ruby you might want to know before beginning coding:"
#While you can use \n, I like to just use puts "". This makes everything more organized and less jumbled.
puts ""
puts "* Ruby is not indentation-sensitive. That's right--you don't have to indent at all! It might still be good, though, if your coding looks jumbled."
puts "* Yes, you can use backslash n to create new lines instead of using more than one put statement--which we'll get to first-thing."
puts "* End statements are BIG. Forget one and your code won't run. But we'll talk more about that later."
puts "* To comment things out, pound signs (or hashtags, if you will) do the trick. This is great for organizing code or temporarily testing a program without some code (for bug fixing)."
#This is ironic.
puts "* Much like Python, another common coding language, Ruby is object-oriented. So if you already know Python, you might be able to pick Ruby up quickly. If not, no worries--it goes the other way around, too."
puts ""
puts "That was a huge amount of text! Once you've gone through it, continue. From this point on, it'll never be that overwhelming!"
cont = gets.chomp

#Here's where I teach you how to print. 
#Note from me: I almost never use print--as you can tell, puts is more of my thing. 
puts "Okay, first actual commands: printing statements. Easy enough, right?"
continue = gets.chomp
puts "Here's an example of a print statement:"
puts 'print "Hello world!"'
continue = gets.chomp
puts 'Try printing out "Ruby is the best!"'
puts "Input your code or type in 'h' or 'help', then submit by pressing the enter key:"
correct = false
while correct == false
#This is the first comprehension check of the program. It asks the user how to code a simple print statement.
answer = gets.chomp.gsub(/\s+/, " ")
puts ""
#As you're about to see, I used tons and tons of ||s. These translate to 'or' and are used so that the code below will run as long as one of the cases are true.
if answer == 'print "Ruby is the best!"' || answer == "print 'Ruby is the best!'" || answer == 'print"Ruby is the best!"' || answer == "print'Ruby is the best!'"
	#I never really indent, but for your sake, I did just this once. Future comprehension checks will not be indented.
	puts "Great job, that's perfect! Here's your output:"
	puts "Ruby is the best!"
	correct = true
elsif answer == "help" || answer == "H" || answer == "Help" || answer == "h"
	puts "Here's a list of things you should check your code complies with if your print statement is not working:"
	#This 'help' option is available in every comprehension check. Each problem has its own set of help.
	puts "* CASES: Ruby is case sensitive when it comes to keywords such as print. So if you typed 'Print' it won't run properly.\n* TYPOS: Did you mistype anything? For example, you may have typed 'prnit' instead of 'print'.\n* CONTENT: Remember, we asked you to print 'Ruby is the best!' and nothing else."
	puts "(If you truly are stuck, you may check out the IDE. However, I don't recommend this. Keep trying your best first.)"
	puts "So let's try that again! Input your new code here:"
else
	puts "Oh no, there's something wrong with your code! Want to try that again? Input your new code here:"
end
end
#In case you're wondering--these continues and conts are simply so that pressing enter will ping the next text.
cont = gets.chomp

#Alright, so here's where I teach how to use put statements.
puts "Oops--did I forget to mention that there's ANOTHER way to print statements? I know--insane."
continue = gets.chomp
puts "Here's an example of a few puts statements and print statements:"
#Notice how I use quotiations inside of parantheses? This is so that the quotations show in the output. You can also show parantheses by using quotations outside of them.
puts 'puts "Hello world!"'
puts 'puts "Hi again!"'
puts 'print "Really?"'
puts 'print " Again?"'
continue = gets.chomp
puts "Consider what you think the output will look like before continuing."
continue = gets.chomp
puts "The output of that code might give you a good idea of the difference between puts and print. Here it is:"
#I kind of cheated here by using \n. For really short text like this, it's no big deal.
puts "Hello world!\nHi again!\nReally? Again?"
continue = gets.chomp
puts "So...what does that output imply? Well, let me clarify: puts statements make new lines of whitespace before running, whereas print statements don't."
continue = gets.chomp
puts "That's why the last two lines of the code connected in the output as 'Really? Again?'"
continue = gets.chomp
puts "Besides that, puts statements work the same way, so you don't need practice with those if you're good with print statements."
continue = gets.chomp

#This is the sleep segment. 'Sleeping' just means to delay code.
puts "Alright, so we have a lot of text-stuff. But if we print text, it'll all print at once! How annoying is that?"
cont = gets.chomp
puts "Luckily for you, there's a sleep method--this delays lines of code in seconds."
cont = gets.chomp
puts "This is great for 'loading' or stories in which you want the text to not appear all at once. Let's try it out."
cont = gets.chomp
puts "I want to make a 'loading' sign before the code begins. So let's do this:"
puts 'puts "Loading, please wait..."'
puts 'puts "(DO NOT press any keys until loading is complete.)"'
puts "sleep(1.5)"
puts 'puts "Loading complete!"'
continue = gets.chomp
puts "Now let's run it!"
puts "Loading, please wait..."
puts "(DO NOT press any keys until loading is complete.)"
#Here's the sleep method in actual code.
sleep(1.5)
puts "Loading complete!"
continue = gets.chomp

#Now for variables. They're important. 
puts "You might be wondering what's next. It's variables!"
continue = gets.chomp
puts "To set a variable to a value, it's simple. Here's an example:"
puts "var = 1"
continue = gets.chomp
puts "I set that variable to 1, but you can set variables to anything you want. You can set one to true, false, 5000, 'cheese'..."
continue = gets.chomp
puts "To set a variable to a string, you'd want to use quotation marks around the value. For True, False, and numbers/integers, you would want to avoid quotation marks."
continue = gets.chomp
puts "If you put a number in quotations, it will be a string, not an integer, meaning you can't do math with it."
continue = gets.chomp
puts "Try setting a variable called exVar to the STRING '5'."
puts "Input your code or type in 'h' or 'help', then submit by pressing the enter key:"
correct = false
while correct == false
#Another comprehension check, brilliant! You know how this goes by now...
answer = gets.chomp.gsub(/\s+/, " ")
puts ""
if answer == "exVar='5'" || answer == 'exVar="5"' || answer == "exVar = '5'" || answer == 'exVar = "5"'
puts "Good job! Since you set a variable but never called it, there's no output, but congrats on successfully creating it!"
correct = true
elsif answer == "h" || answer == "H" || answer == "Help" || answer == "help"
puts "Here's a list of things you should check your code complies with if the variable being set is not working:"
puts "* VARIABLE NAME: Did you name your variable exVar like the prompt suggested? This is case sensitive.\n* VALUE: The value should be a string, not an integer, and should be '5'. Be sure that you have quotations and typed the number 5 instead of spelling it out."
puts "So let's try that again! Input your new code here:"
else
puts "Oh no, there's something wrong with your code! Want to try that again? Input your new code here:"
end
end
continue = gets.chomp
puts "Now that exVar is set to '5' properly, let's try using it. I want to set the variable sumVar to exVar + 10. Thereotically, this should set sumVar to the integer 15."
continue = gets.chomp

#Time for math and methods.
puts "Here's my code:"
puts "sumVar = exVar + 10"
continue = gets.chomp
puts "This should work, right? Think about it before you continue."
continue = gets.chomp
puts "But there's an error:"
puts "no implicit conversion of Integer into String"
continue = gets.chomp
puts "What does this mean? Well, let's break it down."
puts "exVar is still a string--and we can't add strings like that. We need it to be an integer...but how do we do that?"
continue = gets.chomp
puts "Here's my edited, new-and-improved code:"
puts "sumVar = exVar.to_i + 10"
continue = gets.chomp
puts "And ta-da! Now that we've used the .to_i method to change exVar into an integer, we can add it to other integers!"
puts "(Note: This method will only work with strings that can be converted into integers. 'Bananas', for example, cannot be used with the int method.)"
continue = gets.chomp
puts "Okay, one more thing with exVar and sumVar--I want to print (not put) it now with other text. Here's my code:"
puts 'print "The sum of 5 and 10 is " + sumVar + "."'
continue = gets.chomp
puts "First off--the addition signs are simply how you add variables to strings. Secondly, I wonder how this code will run?"
continue = gets.chomp
puts "Hint: It won't! This is because sumVar is an integer--therefore it can't interact with strings."
continue = gets.chomp
puts "Let's use the .to_s method to change it. You can put that right in my code, but to make it shorter, why don't you just add set sumVar to sumVar as a string? It's used in the same way as the .to_i method, only vise versa."
puts "Input your code or type in 'h' or 'help', then submit by pressing the enter key:"
correct = false
while correct == false
#Another comprehension check approaches! And--God dang it--there's no indentations because I'm lazy.
answer = gets.chomp.gsub(/\s+/, " ")
puts ""
if answer == "sumVar=sumVar.to_s" || answer == "sumVar = sumVar.to_s"
puts "Perfect, now sumVar is a string and we can print it out."
correct = true
elsif answer == "h" || answer == "help" || answer == "H" || answer == "Help" 
puts "Here's a list of things you should check your code complies with if the variable being set is not working:"
puts "* VARIABLE NAME: Did you name your variable sumVar like the prompt suggested? This is case sensitive.\n* METHOD: Did you spell the method and use it correctly? Remember, we're using the .to_str method.\n* SETTING: Did you set sumVar to equal sumVar as a string? This is just like the variable setting we did earlier, but with a method at the end of the value. We're not printing anything just yet!"
puts "So let's try that again! Input your new code here:"
else
puts "Oh no, there's something wrong with your code! Want to try that again? Input your new code here:"
end
end
continue = gets.chomp
puts "Incorporating the code you just wrote, let's print out what I was trying to earlier:"
puts 'print "The sum of 5 and 10 is " + sumVar.to_s + "."'
continue = gets.chomp
puts "And the output, all fixed up and ready to go:"
#That's right--I cheated on this 'output' too. It's fake. I'm a faker.
puts "The sum of 5 and 10 is 15."
continue = gets.chomp

#This is the array segment.
puts "So we did it! Now that you know how to use the basic parts of variables, let's move on."
puts "(Note: Before you call a variable, array (we'll talk about those soon), or anything else that must be set, you NEED to define it first. Otherwise, the program won't know what you're trying to call or use.)"
continue = gets.chomp
puts "To make it all fit together, let's use a random character generator as an example."
puts "This generator will incorporate 2 new topics: arrays and random integers."
continue = gets.chomp
puts "First, we should make an array. What's an appearance aspect of a person? Hair color, maybe? Let's do that. Here's the code for an array with hair colors:"
puts 'hairColors = ["blue","green","brown","blonde","red","black"]'
continue = gets.chomp
puts "You'll notice how setting an array is much like setting a variable, except there are brackets around the array and it has many different values inside of it. Like a variable, these can be integers, strings, floats, etc. Between each must be a comma, as shown."
continue = gets.chomp
puts "In the order given, make an array that includes these values as strings: blue, green, brown, purple, gray, & hazel. Please use all lowercase letters for the values and call the array eyeColors."
puts "Input your code or type in 'h' or 'help', then submit by pressing the enter key:"
#Oops...I guess I never mentioned these variables. This is just to check when the while loop should end.
correct = false
while correct == false
#Ready player comprehension check!
answer = gets.chomp.gsub(/\s+/, " ")
puts ""
if answer == "eyeColors=['blue','green','brown','purple','gray','hazel']" || answer == 'eyeColors=["blue","green","brown","purple","gray","hazel"]' || answer == "eyeColors = ['blue','green','brown','purple','gray','hazel']" || answer == 'eyeColors = ["blue","green","brown","purple","gray","hazel"]'
puts "Great coding! Now we have two arrays, hairColors and eyeColors, both at our disposal."
correct = true
elsif answer == "h" || answer == "H" || answer == "help" || answer == "Help"
puts "Here's a list of things you should check your code complies with if the variable being set is not working:"
puts "* ARRAY NAME: Did you name your array eyeColors like the prompt suggested? This is case sensitive.\n* ORDER/TYPOS: Check that your strings aren't mispelled and are in the proper order: blue, green, brown, purple, gray, hazel.\n* BRACKETS: Be sure to use brackets (an open and a closed) around every array.\n* COMMAS: There should be commas between every value. Do you have them?"
puts "So let's try that again! Input your new code here:"
else
puts "Oh no, there's something wrong with your code! Want to try that again? Input your new code here:"
end
end
continue = gets.chomp
puts "To generate a random eye color and hair color for our character, we'll use the two arrays we just made as well as a new method."
continue = gets.chomp
puts "This method is rand(int). The 'int' may be replaced with any number of your choosing; however, it's important to know that this random integer will NEVER be the max."
continue = gets.chomp
puts "For example:"
puts "randNum = rand(11)"
continue = gets.chomp
puts "This would set randNum to either 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, or 10, but NOT 11. The max is never included."
continue = gets.chomp
puts "When calling arrays, the first value will be 0, the second 1, the third 2, etc. It may take a bit to get used to. But in the array eyeColors, you may recall that the first value was blue."
continue = gets.chomp
puts "To call 'blue', this would be the way:"
puts "eyeColors[0]"
cont = gets.chomp
puts "And to put it:"
puts "puts eyeColors[0]"
cont = gets.chomp
puts "Quite simply, this would output:"
puts "blue"
cont = gets.chomp
puts "Let's check if you were paying attention. Say I want to call the eighth value in an array called exArray. How would I do it?"
puts "Input your code or type in 'h' or 'help', then submit by pressing the enter key:"
correct = false
while correct == false
#Oof, it's yet another comprehension check. 
answer = gets.chomp.gsub(/\s+/, " ")
puts ""
if answer == "exArray[7]"
puts "That's exactly right--great job!"
correct = true
elsif answer == "h" || answer == "H" || answer == "help" || answer == "Help"
puts "Here's a list of things you should check your code complies with if the variable being set is not working:"
puts "* ARRAY NAME: Did you name your array exArray like the prompt suggested? This is case sensitive.\n* BRACKETS: When calling an array, you never use paranthesees, so make sure you used brackets as you should.\n* CALLING: We aren't printing or putting the value, we're just calling it. There's no need for any 'puts' or 'print' if you have that."
puts "So let's try that again! Input your new code here:"
else
puts "Oh no, there's something wrong with your code! Want to try that again? Input your new code here:"
end
end
continue = gets.chomp

#Input is about to get taught.
puts "Alright, we're getting there slowly but surely! Let's go right on ahead to possibly the most interesting thing in Ruby and other languages: getting user input."
cont = gets.chomp
puts "Let's say I want to know the user (of the program)'s name. I could use a gets statement or a gets.chomp statement. Much like print and puts, gets is the base, and the method .chomps that can be added will get rid of the whitespace afterwards."
cont = gets.chomp
puts "Anyways, here's the code to get a name, and I've chosen to use gets.chomp:"
puts 'puts "Enter your name:"'
puts "name = gets.chomp"
cont = gets.chomp
puts "You don't have to set gets/gets.chomp to a variable like I did, but usually when getting user input, you plan on using it later on, so using a variable is helpful most of the time."
cont = gets.chomp
puts "I'm going to run that code now. Here's the output:"
nameVar = false
while nameVar == false
puts "Enter your name:"
#This actually gets your name when you run the program. For once, I actually used the proper code!
name = gets.chomp
if name.empty?
puts "Maybe you misunderstood, but that input was actually to get your name--so I'll run it again for you. (L'il Ruby tip: This 're-run if input is empty' code was thanks to the .empty? method! Ruby has a lot of them.)"
puts ""
else
nameVar = true
puts "That's a great name--" + name + ", right?"
cont = gets.chomp
end
end
puts "Now that you've seen an example, try getting the user's favorite food. Use the variable favFood and use either gets OR gets.chomp."
puts "Input your code or type in 'h' or 'help', then submit by pressing the enter key:"
correct = false
while correct == false
#I'm running out of ways to introduce comprehension checks. Here's another one.
answer = gets.chomp.gsub(/\s+/, " ")
puts ""
if answer == "favFood=gets" || answer == "favFood=gets.chomp" || answer == "favFood = gets" || answer == "favFood = gets.chomp"
puts "That's correct--now you can get user input anytime and use it as well simply by calling the variable later on in the code like we did earlier."
correct = true
elsif answer == "h" || answer == "H" || answer == "help" || answer == "Help"
puts "Here's a list of things you should check your code complies with if the variable being set is not working:"
puts "* VARIABLE NAME: I asked for the variable to be called favFood, so check that. It's case sensitive, also.\n* GETS/GETS.CHOMP: 'gets' and 'gets.chomp' should both be lowercase, since commands and keywords are case sensitive."
puts "So let's try that again! Input your new code here:"
else
puts "Oh no, there's something wrong with your code! Want to try that again? Input your new code here:"
end
end
continue = gets.chomp
#Congrats! You're almost there! Bear with me here.
puts "You're almost done with the basics of Ruby! There's just two more topics, and they're's very, very important if you want to code with Ruby and any language, for that matter. Can you guess what the first one is?"
cont = gets.chomp

#Loops. Loops. Loops.
puts "It's loops!"
cont = gets.chomp
puts "There are a bunch of ways to use loops, but I'll show a couple that I think are the most helpful."
cont = gets.chomp
puts "Let's start with while loops. These are pretty simple. But first, remember one of the first things I mentioned? The fact that end statements are really, really important?"
cont = gets.chomp
puts "Well, anything that would be indented in another language (such as Python) now needs an end statement at the end, and this is because Ruby doesn't use indents. This INCLUDES loops."
cont = gets.chomp
puts "So say I want to make a loop run while the variable 'times' is equal to 1. Now, normally this wouldn't work because I never defined 'times', but for the sake of it, let's just assume I did."
cont = gets.chomp
puts "Here's the code:"
puts "while times == 1"
puts 'puts "Hello world!"'
puts "end"
cont = gets.chomp
puts "This will continue to say 'Hello world!' until times no longer equals 1, which is decided by the programmer. Technically, you could put anything you want inside that loop, including more loops (this is called nested looping), though you need to be careful with all those end statements!"
cont = gets.chomp
puts "Oh, and one more thing before I move on--did you notice that there were two equal signs in the while statement? This is because in every type of statement that requires an end, equal signs must double up when used. That's just how it is in Ruby. Don't ask me why."
cont = gets.chomp
puts "Now for, well, for loops. Like while loops, you need an end statement at the end. When you want to index through a range or an array, these are perfect."
cont = gets.chomp
puts "Let's say we want to index through that good old eyeColors array. We can actually use the values in the loop as it runs through them! Here's the code:"
puts "for youCanCallThisAnythingYouWant in eyeColors"
puts 'puts "Are your eyes " + youCanCallThisAnythingYouWant + "?"'
puts "end"
cont = gets.chomp
#Yes, I cheated on this one. I didn't ever really make an array called eyeColors in this code (Pro tip, but you should know this if you've coded with anyting before: Everything needs to be local. I can't access an array from another program unless I add it to this one!)
puts "And here's the output of that:"
puts "Are your eyes blue?"
puts "Are your eyes green?"
puts "Are your eyes brown?"
puts "Are your eyes purple?"
puts "Are your eyes gray?"
puts "Are your eyes hazel?"
cont = gets.chomp
puts "Basic loops--as in, loops that loop a certain amount of times--can be achieved with int.times do, content, and an end. Example:"
puts "5.times do"
puts 'puts "This should loop 5 times!"'
puts "end"
cont = gets.chomp
puts "Last topic of the tutorial: If/else statements! These can be super handy all the time, so you'd best pay attention."
cont = gets.chomp
#Here's a fun little coding fact:
puts "Java uses else if, Python uses elif, etc., etc. But Ruby? Ruby uses elsif. So THAT'S interesting. Accidentally typing else if or elif could definitely break a program."
cont = gets.chomp
puts "Unlike Java and Python, you don't need colons at all thanks to end statements. That's right--if/else statements need ends too. And, like loops, double equal signs."
cont = gets.chomp
puts "Take a look at this code:"
puts 'if userInput == "Miya"'
puts 'puts "Hello! Did you know that your name means palace in Japanese?"'
puts 'elsif userInput == "shut up"'
puts 'puts "That is not very nice of you to say."'
puts "else"
puts 'puts "Hi!"'
puts "end"
cont = gets.chomp
puts "Say the user inputs 'Miya'. The program won't check if they inputted 'shut up' because it already has something to run. So always make sure you properly order your statements."
cont = gets.chomp
puts "In fact, you don't technically need elsif OR else statements. If you only have an if statement, nothing in the statement will run if the requirements aren't met and the program will simply move on to whatever's after that if statement."
cont = gets.chomp
puts "Now for a test on end statements, because they're just that important."
cont = gets.chomp
puts "Here's some nested loops and if/else statements without any ends (What a mess!):"
#Here's a good example of why it's not always a good idea to use \n even if it requires less puts statements. If I used \n, this 'code' would be all jumbled!
puts "while var1 == True"
puts "if var2 == False"
puts 'puts "var2 is false!"'
puts "else"
puts 'puts "var2 is true!"'
puts "for num in numArray"
puts 'puts num.to_str'
puts '3.times do'
puts 'puts "Testing"'
cont = gets.chomp
puts "How many ends would you need in this code? Input a number--not spelled out."
puts "Input your answer or type in 'h' or 'help', then submit by pressing the enter key:"
correct = false
while correct == false
#Get ready for another comprehension check!
answer = gets.chomp.gsub(/\s+/, " ")
puts ""
if answer == "4"
puts "Brilliant--4 ends are needed to fix this code."
correct = true
elsif answer == "h" || answer == "H" || answer == "help" || answer == "Help"
puts "* NUMBER: Did you type in a number, not spelled out? For example, if the answer is 20, you would type '20', not 'twenty'.\n*LOOPS & IF/ELSE STATEMENTS: Recall that all loops and if/else statements have to have an end, so try counting them. Anything attached to an if statement ('else' or 'elsif') doesn't need its own end."
puts "So let's try that again! Input your new answer here:"
else
puts "Your answer was incorrect. Want to try that again? Input your new answer here:"
end
end
continue = gets.chomp

#God bless, you finished! The program's over now, in other words. I'm done. Bye.
puts "There you have it--the down-to-goodness basics of Ruby. I hope you continue to pursue coding, even if Ruby isn't your thing or if this wasn't easy for you. No one picks up a new programming language in a flash, after all. I just hope this helped."