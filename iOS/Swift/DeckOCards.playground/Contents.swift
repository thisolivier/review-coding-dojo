//: Playground - noun: a place where people can play

import UIKit

enum Cols: Int {
    case Red = 1, Green, Blue
}

struct Card{
    let Color: Cols
    let Roll: Int
    
    init(cardCol: Cols) {
        self.Color =  cardCol
        let roll = Int(arc4random_uniform(2))
        
        var options:[Int]!
        
        switch Color{
        case .Red:
            options = [1,2]
        case .Green:
            options = [3,4]
        case .Blue:
            options = [5,6]
        }
        print ("My colour is \(self.Color)")
        self.Roll = options[roll]
        print ("My roll is \(self.Roll)")
    }
    
    var description: String {
        return ("\(Color), \(Roll)")
    }
}

class Deck{
    var Cards: [Card] = []
    
    init(){
        for index in 1...3{
            var currentColor = Cols(rawValue: index )!
            for _ in 1...10{
                self.Cards.append(Card(cardCol: currentColor))
            }
        }
        print ("We have \(self.Cards.count) of cards in our Deck")
    }
    
    func Deal() -> Card?{
        if !self.IsEmpty(){
            return self.Cards.remove(at: self.Cards.count - 1)
        }
        return nil
    }
    
    func IsEmpty() -> Bool{
        if self.Cards.count == 0 {
            return true
        }
        return false
    }
    
    func Shuffle(){
        print ("""
            Preparing to shuffle
            --------------------
            Current state \(self.Cards)
            
            """)
        
        let zeroIndexCards = self.Cards.count-1
        func newPosFromTotal(total:Int, used:Int) -> Int{
            let range = UInt32(total - used)
            let rangeRand = Int(arc4random_uniform(range))
            return rangeRand + used
        }
        
        for index in 0 ... zeroIndexCards{
            let newPos = newPosFromTotal(total: zeroIndexCards, used: index)
            let temp = self.Cards[newPos]
            self.Cards[newPos] = self.Cards[index]
            self.Cards[index] = temp
        }
        
        print ("""
            
            Suffled state \(self.Cards)
            --------------------
            Shuffle done now
            """)
    }
}

func testDeck(){
    let theDeck = Deck()
    theDeck.Shuffle()
}

testDeck()
