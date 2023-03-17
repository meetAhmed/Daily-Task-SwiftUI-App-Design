//
//  TaskStatus.swift
//  DailyTaskAppDesign
//
//  Created by Ahmed Ali on 17/03/2023.
//

import SwiftUI

struct TaskStatus: Identifiable {
    let id: Int
    let name: String
    let count: Int
    let icon: Image
    let color: Color
    let textColor: Color
}
