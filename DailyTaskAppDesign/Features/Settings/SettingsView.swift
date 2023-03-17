//
//  SettingsView.swift
//  DailyTaskAppDesign
//
//  Created by Ahmed Ali on 17/03/2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var allowNotification = true
    @State private var allowNotificationRing = false
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                HStack {
                    Button {
                        
                    } label: {
                        Image.BackIcon
                    }
                    .frame(width: 48, height: 48)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .shadow(
                                color: .ShadowColor,
                                radius: 10,
                                x: -3,
                                y: 7
                            )
                    )
                    Spacer()
                }
                Text("Settings")
            }
            
            Text("General")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.AppTextColorSharp)
            
            HStack {
                Text("Language")
                
                
                Spacer()
                
                Text("English")
                Image.BackIcon
                    .rotationEffect(Angle(degrees: 180))
                    .padding(.leading, 5)
            }
            .font(.system(size: 16))
            .foregroundColor(.AppTextColor)
            .padding(.top, 10)
            
            Text("Delete Account")
                .font(.system(size: 16))
                .foregroundColor(.AppTextColor)
                .padding(.top, 5)
            
            Text("Notifications")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.AppTextColorSharp)
                .padding(.top)
            
            Toggle("Allow Notification", isOn: $allowNotification)
                .tint(.AppColor)
                .font(.system(size: 16))
                .foregroundColor(.AppTextColor)
                .padding(.top, 10)
            
            Toggle("Allow Notification Rings", isOn: $allowNotificationRing)
                .tint(.AppColor)
                .font(.system(size: 16))
                .foregroundColor(.AppTextColor)
                .padding(.top, 5)
            
            Spacer()
        }
        .padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
