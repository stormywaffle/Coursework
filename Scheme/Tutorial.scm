#|
//////////////////////////////////////////////////////
////Created By Mark Corre for instructional use./ ////
//////////////////////////////////////////////////////
This a set of lessons on how to use Scheme. These lessons assume you have basic programming knowledge in an object-oriented language like Java or C++. Just load this file by typing (load "lessons.scm") in your Scheme compiler. Then just type in the letters 'a' , 'b', 'c' etc in your prompt to see the lesson. You may be asking why include this tutorial in a .scm file and not as .txt or some other format. Well this is because the Scheme compiler evaluates as you type you can test Scheme code right after you read your lessons. Be careful though, do not define any code to any of the letters used in this guide or you will override the lessons in your session.
|#
(define a "Hello. Here I am going to demonstrate the basics of Scheme. Scheme prints everything you type after you type it! It also ignores spaces and all forms of line breaks. Any single value like a number or a string is called a constant. Try typing constants like 5 or Hello World(in double quotes) and Scheme evulate and print them!")
(define b "An expression like 22/3 will be printed like '22/3' and will not be evaluated. In order to evaluate it you need to put it in parenthesis with the operator first i.e. (/ 22 3). You may be familiar with this order this is prefix notation or Polish notation. Regularly most people are taught to evaluate expression with infix notation i.e. 22 / 3. When we put the expression in parenthesis it is called a procedure, or Scheme's version of a function. In a procedure the left-most variable is the name of the procedure and any following variables are the arguments." )

(define c "Some of the most important procedures are car, cdr, and cons. Each procedure works on a list. List are writen just like procedures except they have a single-quote or ' before the left parenthesis. Car returns the first element of a list, cdr returns every element but the first element in a list. cons combines lists. Note since cons is in a list a single item must also be in a list and not by itself. In oder to write a single item list you can write ' and the them list item(i.e. 'a is a list with the single item a.")

(define d "You can write your own procedures using the define procedure. This follows the format (define procedure-name (lambda(arg1 arg2 etc) (expressions/procedure calls))). For instance you can make a function add5 that adds 5 to a number in the following way: (define add5 (lambda (x) (+ x 5))).")

(define e "It was mentioned earlier that in Scheme you must place a ' or single quote before a list to tell Scheme that the following items are a list a not a procedure. In reality ' is shorthand for the procedure quote which takes a list inside a parenthesis as an argument. For instance, (quote (1 2 3)) is the same as '(1 2 3). Furthere because lists are lists they do not evaluate expressions inside the list therefore '(+ 1 (+ 2 2)) is (+ 1 (+ 2 2)) and not 5. Note strings can be quoted as well. and doing so will keep the double quotes.")

(define f "Scheme also allows variable bindings in what are called 'Let Expressions.' Let Expressions enable variables to act like parameters you would see in the functions of other conventional languages like C or Java. That is the varibles you specify for the let expression are within the scope of the let expression. For instance you can have the Let Expression:\n

(let( ((x 5)) (+ x 5))\n

Which would return 10.\n

You can also use square brackets [ and ] instead of ( and ) for defining your bindings.Therefore, \n

(let( ([x 5]) (+ x 5))\n

Would also evaluate to 10.\n

Try it yourself!")

(define g "While both square brackets and parenthesis can be used in Let Expressions square brackets are often used instead for readibility. Be careful though, you cannot not use square brackets everywhere you can use parenthesis, therefore it is best just to use them in Let Expressions.")

(define h "You are not limited to one binding you can do something like:\n

(let ([x 4] [y 5]) (+ x y))\n

Which of course would give 9.")

(define i "You can also nest Let Expressions. This would make your code look something like this:\n

(let ([x 1] [y 2])
 (let ([z (+ x 3)])
  (+ z y)))\n

Which gives 6. And of course the binding behaves as you would imagine where the scope of a varible is limited to its' containing Let Expression.")

(define j "You can also use Let Expressions to bind variables to procedures. For example:\n

(let ([foo (lambda (x) (* x 3))])
 (foo (3)))\n

Which as you guess it, returns 9!")

(define k "The procedure list is a very useful procedure as it creates lists out of values. These values, supplied as arguments, are evaluated before the list is finished being evaluated. This means that if you make a call like:\n

(list (+ 5 4) (- 5 3) (* 1 6))\n

You would get the list (9 2 6).")

(define l "Scheme also has conditionals. Thhe if conditional follow the format\n

(if test consequent alternative)\n

So if you wanted to test a number was greater than 5 and if it was double it you could do something like\n

(define test5 (lambda (x) (if (> 5 x) (* x 2) x)))\n.")

(define m "Or expressions can be written.")
