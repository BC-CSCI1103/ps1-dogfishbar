(* author: Bob Muller, cribbed from previous assignments with unit
   testing approach adapted from UPenn CS120.
   latest revision: August 2020

   This is the harness code for problem set 1 of CSCI 1103.
   In order to run this code, type the following commands
  in the unix shell:

   > cd
   > cd csci1103/ps1-YOUR_GITHUB_ID/src/
   > dune exec bin/main.exe

*)
(* Problem 1:

   Write the first function helloWorld : unit -> string. When this
   function is called, it should simply return the string "Hello World!".

   In writing this function, you should replace the body of the helloWorld
   function below (i.e., the line starting with failwith) by a correct
   function body.
*)
let helloWorld () : string = failwith "Problem 1 helloWorld not implemented."

let test () : bool =
  helloWorld () = "Hello World!"

let () = Lib.run_test "hello world test" test

(* Problem 2:

   The Golden Ratio, sometimees known as phi, `is an important real
   number constant that was discovered by Greek mathematicians in the
   classical times. Phi is an irrational number 1.618... . It is
   computed by (1.0 + sqrt(5.0)) / 2.0.  Write the function
   golden : unit -> float such that a call golden() will compute this
   formula.

   As in problem 1, replace the failwith line below with your code.
*)
let golden () : float = failwith "Problem 2 golden not implemented."

let test () : bool =
  int_of_float(golden() *. 1000.) = 1618

let () = Lib.run_test "golden ratio test" test

(* Problem 3:

   Write the function hypotenuse : float -> float -> float such that
   when given the base and height a right triangle, the function will
   return the length of the hypotenuse. Of course you should use our
   old friend the Pythagorean Theorem.
*)
let hypotenuse base height = failwith "Problem 3 hypotenuse not implemented."

let test () : bool =
  Lib.closeEnough (hypotenuse 1.0 1.0) (sqrt 2.0)

let () = Lib.run_test "hypotenuse test" test

(* Problem 4: THIS IS AN OPTIONAL PROBLEM.

   The following definition of yellowCircle displays a green
   circle. Modify the code so that the circle that it displays
   is yellow.
*)
let width = 600
let height = width
let radius = width / 2
let color = Color.makeColor 255 0 0

let draw () = Image.circle radius color

let yellowCircle() : unit =
  Animate.start ()
                ~name:"Should be a Yellow Circle"
                ~view:draw
                ~width:width
                ~height:height

let test () : bool = yellowCircle () = ()

let () = Lib.run_test "yellowCircle test" test

let () = print_endline "Problem set 1 ran to completion."
