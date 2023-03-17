//
//  HomeTaskView.swift
//  DailyTaskAppDesign
//
//  Created by Ahmed Ali on 17/03/2023.
//

import SwiftUI

struct HomeTaskView: View {
    let task: Task
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Spacer()
                    .frame(width: 2, height: 40)
                    .background(task.status.color)
                VStack(alignment: .leading) {
                    Text(task.name)
                        .font(.system(size: 16))
                        .foregroundColor(.AppTextColorSharp)
                    
                    Text(task.time)
                        .font(.system(size: 14))
                        .foregroundColor(.AppTextGrayColor)
                }
                .padding(.leading)
                Spacer()
                Image(systemName: "ellipsis")
                    .rotationEffect(Angle(degrees: 90))
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(task.tags, id: \.self) { tag in
                        Text(tag)
                            .font(.system(size: 10))
                            .foregroundColor(task.status.textColor)
                            .padding(5)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(task.status.color)
                            )
                    }
                }
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.TaskCellColor)
        )
    }
}

struct HomeTaskView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTaskView(task: TaskService.instance.getTasks()[0])
    }
}
