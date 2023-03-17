//
//  ProfileView.swift
//  DailyTaskAppDesign
//
//  Created by Ahmed Ali on 17/03/2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Image.UserIcon
                .resizable()
                .frame(width: 80, height: 80)
                .padding()
                .background(
                    Circle()
                        .fill(.white)
                )
                .shadow(
                    color: .ShadowColor,
                    radius: 10,
                    x: 0,
                    y: 0
                )
            
            Text("Steve Job")
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.AppTextColorSharp)
            
            Text("SteveJob@gmail.com")
                .font(.system(size: 14))
                .foregroundColor(.AppTextColorSharp)
            
            LazyVGrid(
                columns: [.init(.flexible()), .init(.flexible())],
                spacing: 20
            ) {
                ForEach(TaskService.instance.getProfileTaskStatus()) { taskStatus in
                    ProfileTaskStatusView(taskStatus: taskStatus)
                }
            }
            .padding()
        }
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
