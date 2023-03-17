//
//  TaskService.swift
//  DailyTaskAppDesign
//
//  Created by Ahmed Ali on 17/03/2023.
//

import Foundation

class TaskService {
    static let instance = TaskService()
    private init() {}
}

extension TaskService {
    var completedTaskStatus: TaskStatus {
        .init(id: 1, name: "Completed", count: 86, icon: .TaskCompletedIcon, color: .TaskCompletedColor, textColor: .AppTextColorSharp)
    }
    
    var pendingTaskStatus: TaskStatus {
        .init(id: 2, name: "Pending", count: 15, icon: .TaskPendingIcon, color: .TaskPendingColor, textColor: .white)
    }
    
    var cancelledTaskStatus: TaskStatus {
        .init(id: 3, name: "Cancelled", count: 15, icon: .TaskCancelledIcon, color: .TaskCancelledColor, textColor: .white)
    }
    
    var onGoingTaskStatus: TaskStatus {
        .init(id: 4, name: "On Going", count: 67, icon: .TaskOnGoingIcon, color: .TaskOnGoingColor, textColor: .AppTextColorSharp)
    }
    
    func getProfileTaskStatus() -> [TaskStatus] {
        [
            .init(id: 1, name: "Personal", count: 6, icon: .PersonalTaskIcon, color: .TaskPendingColor, textColor: .AppTextColorSharp),
            .init(id: 2, name: "Work", count: 8, icon: .PersonalTaskIcon, color: .TaskCompletedColor, textColor: .AppTextColorSharp),
            .init(id: 3, name: "Private", count: 3, icon: .PrivateTaskIcon, color: .TaskCancelledColor, textColor: .AppTextColorSharp),
            .init(id: 4, name: "Meeting", count: 4, icon: .MeetingTaskIcon, color: .TaskOnGoingColor, textColor: .AppTextColorSharp)
        ]
    }
    
    func getTaskStatus() -> [TaskStatus] {
        [completedTaskStatus, pendingTaskStatus, cancelledTaskStatus, onGoingTaskStatus]
    }
    
    func getTasks() -> [Task] {
        [
            .init(id: 1, name: "Cleaning Clothes", time: "07:00 - 07:15", tags: ["Urgent", "Home"], status: pendingTaskStatus),
            .init(id: 2, name: "Go for Walk!", time: "06:00 - 07:00", tags: ["Morning", "Health"], status: cancelledTaskStatus)
        ]
    }
}
