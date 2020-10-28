//
//  PromptBrain.swift
//  Shamaz
//
//  Created by James Tapping on 20/10/2020.
//

import Foundation

struct PromptBrain {
    
    enum Timeframe: CaseIterable {
            case events, days, months, years
        }
    
    // Arrays containing past and future strings for the game
    
    let pastTextEvents = ["Where were you last Christmas?","What did you do last Easter?","What did you do last weekend?", "What did you do for new years eve?","What did you do last summer?"]
    let pastTextMonths = ["Try and describe a memorial day from ", "Tell us about an event from  ","What can you remember from "]
    let pastTextDays = ["What clothes were you wearing ","What did you have for lunch ","Describe your day "]
    let pastTextYears = ["Was your hair different ", "Where were you working "]
    
    let futureTextEvents = ["Where will you be next Christmas?","Where will you go next summer ?", "Where will you be for new years eve?", "Where will you spend Christmas?"]
    let futureTextDays = ["What are you doing ", "What are you planning to do "]
    let futureTextMonths = ["Where do you hope to be in ", "Are you planning a trip in the next "]
    let futureTextYears = ["Will you be living in another country  in ", "Can you imagine your ideal house in ","What job do you think you will be doing in ", "What would you like to be doing in ", "What would your perfect car be in "]
    
    // Generate a required timeframe 
    
    func getTimeFrame(_ t: Timeframe) -> Int {
            
            switch t {
            
            case .events:
            return 0
                
            case .days:
                
                // Generate random days 1-5
                
                let randomDays = Int.random(in: 1...5)
                return randomDays
                
            case .months:
                
                // Generate random months 1-12
                
                let randomMonths = Int.random(in: 1...12)
                return  randomMonths
                
            case .years:
                
                // Generate years in multiples of 5
                
                let randomYears = Int.random(in: 1...5) * 5
                return randomYears
                
            }
            
        }
    
    
    func getPastPrompt() -> String{
        
        let timeframe = Timeframe.allCases.randomElement()
        
        switch timeframe {
        
        // If events selected , get a random future event and return it
        
        case .events:
            
            let prompt = pastTextEvents.randomElement()
            
            return prompt!
            
        // Generate a random prompt for each past timeframe and return it
            
        case .days:
            
            let timeFrame = getTimeFrame(.days)
            let prompt = pastTextDays.randomElement()! + String(timeFrame) + " day".makePlural(timeFrame) + " ago?"
            
            return prompt
            
        case .months:
            
            let timeFrame = getTimeFrame(.months)
            let prompt = pastTextMonths.randomElement()! + String(timeFrame) + " month".makePlural(timeFrame) + " ago?"
            
            return prompt
            
        case .years:
            
            let timeFrame = getTimeFrame(.years)
            let prompt = pastTextYears.randomElement()! + String(timeFrame) + " years ago?"
            return prompt
        
        default:
            return ""
    
        }
        
      }
    
    func getFuturePrompt() -> String {
        
        let timeframe = Timeframe.allCases.randomElement()
        
        switch timeframe {
        
        // If events selected , get a random future event and return it
        
        case .events:
            
            let prompt = futureTextEvents.randomElement()
            
            return prompt!
            
        // Generate a random prompt for each future timeframe and return it
            
        case .days:
            
            let timeFrame = getTimeFrame(.days)
            let prompt = futureTextDays.randomElement()! + String(timeFrame) + " day".makePlural(timeFrame) + " from now?"
            
            return prompt
            
        case .months:
            
            let timeFrame = getTimeFrame(.months)
            let prompt = futureTextMonths.randomElement()! + String(timeFrame) + " month".makePlural(timeFrame) + "?"
            
            return prompt
            
        case .years:
            
            let timeFrame = getTimeFrame(.years)
            let prompt = futureTextYears.randomElement()! + String(timeFrame) + " years time?"
            
            return prompt
        
        default:
            return ""
    
        }
    }
}
    
    

