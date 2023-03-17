//
//  Task.swift
//  DailyTaskAppDesign
//
//  Created by Ahmed Ali on 17/03/2023.
//

import Foundation

struct Task: Identifiable {
    let id: Int
    let name: String
    let time: String
    let tags: [String]
    let status: TaskStatus
}
