import Foundation

func randomInRange (_ pMin: Int, _ pMax: Int) -> Int {
    return pMin + Int(arc4random_uniform(UInt32(pMax - pMin + 1)))
}

print ("type something now")

var inputText = readLine()!

print ("you typed \(inputText)")

var aRandomNumber = randomInRange(1, 3)

print ("here's number \(aRandomNumber)")
