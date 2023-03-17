//
//  HomeView.swift
//  DailyTaskAppDesign
//
//  Created by Ahmed Ali on 17/03/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var vm = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Hi, Steven")
                    .font(.system(size: 28, weight: .semibold))
                    .foregroundColor(.AppTextColorSharp)
                Spacer()
                Image.UserIcon
            }
            
            Text("Let’s make this day productive")
                .foregroundColor(.AppTextGrayColor)
                .font(.system(size: 14))
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("My Task")
                        .font(.system(size: 28, weight: .semibold))
                        .foregroundColor(.AppTextColorSharp)
                        .padding(.top, 30)
                    
                    LazyVGrid(
                        columns: [.init(.flexible()), .init(.flexible())],
                        spacing: 0
                    ) {
                        ForEach(vm.taskStatus) { taskStatus in
                            HomeTaskStatusView(taskStatus: taskStatus)
                        }
                    }
                    
                    HStack {
                        Text("Today Task")
                            .font(.system(size: 28, weight: .semibold))
                            .foregroundColor(.AppTextColorSharp)
                        
                        Spacer()
                        
                        Text("View all")
                            .font(.system(size: 12, weight: .semibold))
                            .foregroundColor(.AppTextColor)
                    }
                    .padding(.top, 30)
                    
                    ForEach(vm.tasks) { task in
                        HomeTaskView(task: task)
                    }
                }
                
            }
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
