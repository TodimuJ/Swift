//
//  LoginView.swift
//  Login
//
//  Created by Todimu Jenrola on 2021-05-09.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack(spacing: 15){
            Spacer()
            
            Text("MUN")
                .font(.system(size: 64, weight: .semibold))
                .foregroundColor(.red )
            
            HStack{
                Image(systemName: "envelope")
                    .foregroundColor(.gray)
                TextField("Email", text: $email)
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(9)
            .padding(.horizontal, 20)
    
            HStack{
                Image(systemName: "lock")
                    .foregroundColor(.gray)
                SecureField("Password", text: $password)
            }
            .padding(.all, 20)
            .background(Color.white)
            .cornerRadius(9)
            .padding(.horizontal, 20)
            
            Button(action: {}){
                Text("Login ")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .medium))
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(Color.red.opacity(0.9))
            .cornerRadius(8)
            .padding(.horizontal, 20)
            
            
            
            Spacer()
        }
        .background(
            Image("clock")
                .resizable()
                .aspectRatio(contentMode: .fill))
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginView_Previews : PreviewProvider {
    static var previews: some View {
        Group{
            LoginView().previewDevice("iPhone 8")
            LoginView().previewDevice("iPhone 11 Pro")
            LoginView().previewDevice("iPhone 12 Pro")
        }
    }
}
 
