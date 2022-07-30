//
//  Motivation.swift
//
//
//  Created by Yona Harel on 23/07/2022.
//

import Foundation

public enum MotivationType: String, Codable {
    case leisure
    case sports
    case education
    case other
    case family
}

public struct Motivation: Codable {
    public let id: UUID
    public let title: String
    public let type: MotivationType
    public let dueDate: Date
    public let goal: Int
    public let progress: Int
    
    public init(id: UUID,
                title: String,
                type: MotivationType,
                dueDate: Date,
                progress: Int = 0,
                goal: Int) {
        self.id = id
        self.title = title
        self.dueDate = dueDate
        self.goal = goal
        self.progress = progress
        self.type = type
    }
}

public struct UpdateProgress: Codable {
    public let motivationId: UUID
    public let newProgress: Int
}

public extension DateFormatter {
    static var customDateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        return formatter
    }
}
