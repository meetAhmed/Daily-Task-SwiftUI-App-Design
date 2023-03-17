//
//  ProfileTaskStatusView.swift
//  DailyTaskAppDesign
//
//  Created by Ahmed Ali on 17/03/2023.
//

import SwiftUI

struct ProfileTaskStatusView: View {
    let taskStatus: TaskStatus
    private let minWidth = UIScreen.main.bounds.width * 0.38
    
    var body: some View {
        VStack(alignment: .center) {
            taskStatus.icon
                .resizable()
                .frame(width: 40, height: 40)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(taskStatus.color)
                )
            
            Text(taskStatus.name)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(taskStatus.textColor)
            Text("\(taskStatus.count) Task")
                .font(.system(size: 14))
                .foregroundColor(taskStatus.textColor)
        }
        .padding()
        .frame(minWidth: minWidth, alignment: .center)
        .background(
            taskStatus.color.opacity(0.5)
                .cornerRadius(20)
        )
    }
}

struct ProfileTaskStatusView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTaskStatusView(taskStatus: TaskService.instance.getProfileTaskStatus()[1])
    }
}
