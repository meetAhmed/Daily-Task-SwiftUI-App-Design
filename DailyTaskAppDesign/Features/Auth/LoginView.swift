//
//  LoginView.swift
//  DailyTaskAppDesign
//
//  Created by Ahmed Ali on 17/03/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var showHomeView = false
    
    var body: some View {
        VStack {
            Image.LoginArt
                .resizable()
                .scaledToFit()
                .padding(30)
            
            Image.AppNameLogo
            
            Text("Plan what you will do to be more organized for today, tomorrow and beyond")
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(.AppTextColor)
            
            Button {
                showHomeView.toggle()
            } label: {
                Text("Login")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 14)
                            .fill(Color.AppColor)
                    )
                    .padding()
            }
            .padding(.top, 30)
            
            Button {
                showHomeView.toggle()
            } label: {
                Text("Sign Up")
                    .foregroundColor(.AppColor)
                    .font(.system(size: 16, weight: .semibold))
            }
        }
        .padding()
        .fullScreenCover(isPresented: $showHomeView) {
            MainView()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
