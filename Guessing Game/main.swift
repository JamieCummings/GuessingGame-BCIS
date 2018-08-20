//
//  main.swift
//  Guessing Game
//
//  Created by Jamie Cummings on 8/16/18.
//  Copyright © 2018 Jamie Cummings. All rights reserved.
//

import Foundation

//print("Please Enter your favorite programming language", terminator: ".")
//let name = readLine()
//print("Your favorite programming language is \(name!).")

// number of tries = 5
var playAgain = ""
//
repeat {
    var numberOfTries = 5
    
    //generate a random number
    let randomNumber = Int(arc4random_uniform(99)) + 1
    
    // accept user input and validate
    var guessedNumber: Int? = nil
    
    
    
    
    //repeat {
    //    if let number = Int(readLine()!){
    //        guessedNumber = number
    //    } eles {
    //        print
    //    }
    //}
    
    
    // if guess == correct, tell user "you win!". give option to restart or quit. if restart, start at the top.
    
    // if guess > correct, tell user "guess lower" and decrease number of tries.
    // if guess < correct, tell user "guess higher" and decrease number of tries.
    
    // if number of tries > 0, go to accept user input. if number of tires == 0, tell user "you lose!" and give option to restart or quit. if restart, start at the top.
    
    // accept user intput and validate
    //var guessedNumber: Int? = nil
    
    print("Guess a random number between 1-100:")
    
   // game repeat
    repeat{
        
        repeat {
            
            let input = readLine()! // should never be nil
            if input == "nope"{
                print ("you should guess \(randomNumber)")
            }
            if let number = Int(input) {
                if number >= 1 && number <= 100 {
                    guessedNumber = number
                } else {
                    print ("please enter a valid number between 1 and 100.")
                    guessedNumber = nil
                }
                
            } else {
                print("Please enter a number")
                guessedNumber = nil
                
            }
        } while guessedNumber == nil
        
        guard let guessedNumber =  guessedNumber else {
            fatalError()
        }
        if guessedNumber == randomNumber {
            print("woohoo, you won!")
            
            break
           
        }
        if guessedNumber == 23 {
            print ("JORDAN, really? 😉")
        }
        
        if numberOfTries ==  1 {
            print("you lost, the right number is \(randomNumber)!")
            break
        }
        else if guessedNumber < randomNumber{
            print ("Try again,guess higher")
            numberOfTries -= 1
        }    else if guessedNumber > randomNumber{
            print ("Try again,guess lower")
            numberOfTries -= 1
        }
        print("you have \(numberOfTries) left")
        
        
    }while numberOfTries > 0
    print ("do you want to play again? Type yes.")
    playAgain = readLine()!
}while playAgain.lowercased() == "yes"













