//
//  HomeViewModel.swift
//  DailyTaskAppDesign
//
//  Created by Ahmed Ali on 17/03/2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var taskStatus = TaskService.instance.getTaskStatus()
    @Published var tasks = TaskService.instance.getTasks()
}
