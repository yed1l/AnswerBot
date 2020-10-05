//
//  QuestionAnswer.swift
//  AnswerBot
//
//  Created by Yedil on 10/5/20.
//

struct MyQuestionAnswerer {
    /// Creates a String in response to another String.
    func responseTo(question: String) -> String {
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion.hasPrefix("hello") {
            return "Hi!"
        } else if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else if lowerQuestion.hasPrefix("where") {
            return "On Mars!"
        } else {
            let defaultNumber = question.count % 3
            
            if defaultNumber == 0 {
                return "That really depends"
            } else if defaultNumber == 1 {
                return "I think so, yes"
            } else {
                return "Ask me again tomorrow!"
            }
        }
    }
}
