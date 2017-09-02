import Foundation

//
func randomInRange (_ pMin: Int, _ pMax: Int) -> Int {
    return pMin + Int(arc4random_uniform(UInt32(pMax - pMin + 1)))
}

//
var randNumber = randomInRange(1, 100)
print("Guess a number between 1 and 100")
var guessCount = 1

var num: Int = 0
//

/*
if var userInput = readLine() {
    if var num = Int(userInput) {
        print("you typed \(num)")
    }
}
*/

let userInput = readLine()!
var num = Int(userInput)

print(num)

//
func randomNumberGame() {
    //
    /*
    while num != randNumber {
        if num < randNumber {
            print("Guess ⬆︎")
            guessCount += 1
        }
        //if num > randNumber {
        //    print("Guess ⬇︎")
        //    guessCount += 1
        //}
        //print("It took you " + guessCount + "guesses!")
    }
    */
}




/*
print ("type something now")

var inputText = readLine()!

print ("you typed \(inputText)")

//var aRandomNumber = randomInRange(1, 3)

print ("here's number \(aRandomNumber)")
 
*/
 
