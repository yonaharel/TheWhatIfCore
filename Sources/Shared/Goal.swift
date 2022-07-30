//
//  Motivation.swift
//
//
//  Created by Yona Harel on 23/07/2022.
//

import Foundation

public enum GoalType: String, Codable, CaseIterable {
    case leisure
    case sports
    case education
    case other
    case family
}

public struct Goal: Codable, Identifiable {
    public let id: UUID
    public let title: String
    public let type: GoalType
    public let dueDate: Date
    public let target: Int
    public let progress: Int
    
    public init(id: UUID,
                title: String,
                type: GoalType,
                dueDate: Date,
                progress: Int = 0,
                target: Int) {
        self.id = id
        self.title = title
        self.dueDate = dueDate
        self.target = target
        self.progress = progress
        self.type = type
    }
}

public struct UpdateProgress: Codable {
    public let id: UUID
    public let newProgress: Int
}

public extension DateFormatter {
    static var customDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        return formatter
    }
}
