//
//  HomeTaskStatusView.swift
//  DailyTaskAppDesign
//
//  Created by Ahmed Ali on 17/03/2023.
//

import SwiftUI

struct HomeTaskStatusView: View {
    let taskStatus: TaskStatus
    private let minWidth = UIScreen.main.bounds.width * 0.38
    
    var body: some View {
        VStack(alignment: .leading) {
            taskStatus.icon
            Text(taskStatus.name)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(taskStatus.textColor)
            Text("\(taskStatus.count) Task")
                .font(.system(size: 14))
                .foregroundColor(taskStatus.textColor)
        }
        .padding()
        .frame(minWidth: minWidth, alignment: .topLeading)
        .background(
            LinearGradient(
                colors: [
                    taskStatus.color,
                    taskStatus.color.opacity(0.9),
                    taskStatus.color.opacity(0.82),
                    taskStatus.color.opacity(0.89),
                    taskStatus.color.opacity(0.71),
                    taskStatus.color.opacity(0.69)
                ],
                startPoint: .leading,
                endPoint: .trailing
            )
            .cornerRadius(20)
            .shadow(
                color: taskStatus.color,
                radius: 5,
                x: 10,
                y: 10
            )
        )
        .overlay(
            Image(systemName: "arrow.right")
                .padding()
                .foregroundColor(.white)
                .font(.caption)
            , alignment: .topTrailing
        )
    }
}

struct HomeTaskStatusView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTaskStatusView(taskStatus: TaskService.instance.getTaskStatus()[0])
    }
}
