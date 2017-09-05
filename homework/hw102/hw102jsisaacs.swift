import Foundation

//method returns a random number between a min and max
func randomInRange (_ pMin: Int, _ pMax: Int) -> Int {
    return pMin + Int(arc4random_uniform(UInt32(pMax - pMin + 1)))
}

//start the guessing
var randNumber = randomInRange(1, 100)
print("Guess a number between 1 and 100")
var guessCount = 1

var guessNumber = -1


//method for getting user userInput
func guessingMechanic(){
    let userInput = readLine()!
    let maybeNumber = Int(userInput)
    if(maybeNumber != nil){
        print("You entered: \(maybeNumber!)")
        guessNumber = maybeNumber!
    }
    else {
        print("error - not a number")
    }
}

func randomNumberGame() {
    //
    while guessNumber != randNumber {
        guessingMechanic()
        if guessNumber < randNumber {
            print("Guess ⬆︎")
            
            guessCount += 1
        }
        if guessNumber > randNumber {
            print("Guess ⬇︎")
            
            guessCount += 1
        }
    }
    print("It took you \(guessCount) guesses!")
}

randomNumberGame()
