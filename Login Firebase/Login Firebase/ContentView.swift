//
//  ContentView.swift
//  Login Firebase
//
//  Created by Todimu Jenrola on 2021-05-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView().previewDevice("iPhone 8")
            ContentView().previewDevice("iPhone 11 Pro")
        }
    }
}

struct Home: View{
    @State var show = false
    
    var body: some View {
//            Login()
            NavigationView{
                ZStack{
                    NavigationLink(destination: SignUp(show: self.$show), isActive: self.$show ){
                            Text("")
                    }
                        .hidden()
                    
                    Login(show : self.$show)
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                
                
            }

    }
}

struct Login: View {
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var password = ""
    @State var visible = false
    @Binding var show : Bool
    @State var alert = false
    @State var error = ""
    
    

    var body: some View {
        
            ZStack{
                ZStack(alignment: .topTrailing) {
                    GeometryReader{_ in
                        VStack{
                            Image("logo")
                //                .resizable()
                                .scaledToFit()
                    
                        
                            Text("Login to your account")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(self.color)
                                .padding(.top, 35)
                            
                            TextField("Email", text:self.$email)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color("Color") : self.color, lineWidth: 2))
                                .padding(.top, 25)
                            
                            
                            HStack(spacing: 15){
                                
                                VStack{
                                    if self.visible {
                                        TextField("Password", text: self.$password)
                                    }
                                    else{
                                        SecureField("Password", text: self.$password)
                                    }
                                }
                                
                                Button(action: {
                                    self.visible.toggle()
                                }) {
                                    Image(systemName: self.visible ? "eye.slash.fill": "eye.fill")
                                        .foregroundColor(self.color)
                                    
                                }
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 4).stroke(self.password != "" ? Color("Color") : self.color, lineWidth: 2))
                            .padding(.top, 25)
                            
                            
                            HStack{
                                Button(action: {
                                }) {
                                    Text("Forgot password")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("Color"))
                                    
                                }
                            }
                            .padding(.top, 20)
                            
                            
                            Button(action: {
                                
                                self.verify()
                                
                            }) {
                                Text("Login")
                                    .foregroundColor(.white)
                                    .padding(.vertical)
                                    .frame(width: UIScreen.main.bounds.width - 50)
                            }
                            .background(Color("Color"))
                            .cornerRadius(10)
                            .padding(.top, 25)
                            
                            
                        }
                        .padding(.horizontal, 25)
                        .padding(.top, 50)
                        
                        }
                    
                    
                    Button(action: {
                        self.show.toggle()
                        
                    }) {
                        Text("Register")
                            .foregroundColor(Color("Color"))
                            .fontWeight(.bold)
                    }
                    .padding()
            
                    
                        
                    }
                
                
                if self.alert{
                    ErrorView(alert: self.$alert, error: self.$error)
                }
        }
    }
    
    func verify(){
        if self.email != "" && self.password != ""{
            
        }
        else{
            self.error = "Please fill all required fields."
            self.alert.toggle()
        }
    }
}


struct SignUp : View{
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var password = ""
    @State var repass = ""
    @State var visible = false
    @State var revisible = false
    @Binding var show : Bool
    
    

    var body: some View {
        ZStack(alignment: .topLeading) {
            GeometryReader{_ in
                VStack{
                    Image("logo")
        //                .resizable()
                        .scaledToFit()
            
                
                    Text("Create a new account")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(self.color)
                        .padding(.top, 35)
                    
                    TextField("Email", text:self.$email)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color("Color") : self.color, lineWidth: 2))
                        .padding(.top, 25)
                    
                    
                    HStack(spacing: 15){
                        
                        VStack{
                            if self.visible {
                                TextField("Password", text: self.$password)
                            }
                            else{
                                SecureField("Password", text: self.$password)
                            }
                        }
                        
                        Button(action: {
                            self.visible.toggle()
                        }) {
                            Image(systemName: self.visible ? "eye.slash.fill": "eye.fill")
                                .foregroundColor(self.color)
                            
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.password != "" ? Color("Color") : self.color, lineWidth: 2))
                    .padding(.top, 25)
                    
                    
                    
                    
                    HStack(spacing: 15){
                        
                        VStack{
                            if self.revisible {
                                TextField("Re-enter password", text: self.$repass)
                            }
                            else{
                                SecureField("Re-enter password", text: self.$repass)
                            }
                        }
                        
                        Button(action: {
                            self.revisible.toggle()
                        }) {
                            Image(systemName: self.revisible ? "eye.slash.fill": "eye.fill")
                                .foregroundColor(self.color)
                            
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.repass != "" ? Color("Color") : self.color, lineWidth: 2))
//                    .padding(.bottom, 25)
                    

                    
                    Button(action: {
                    }) {
                        Text("Register")
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 50)
                    }
                    .background(Color("Color"))
                    .cornerRadius(10)
                    .padding(.top, 20)
                    
                    
                }
                .padding(.horizontal, 25)
//                .padding(.bottom, 50)
                
                }
            
            Button(action: {
                self.show.toggle()
                
            }) {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(Color("Color"))
            
            }
            .padding()
                
            }
            .navigationBarBackButtonHidden(true)
        }
}

struct ErrorView : View {
    @State var color = Color.red
    @Binding var alert : Bool
    @Binding var error : String
    
    var body: some View{
        
//        GeometryReader{_ in
            
            VStack{
                HStack{
                    Text("Error")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(self.color)
                    
                    Image(systemName: "exclamationmark.triangle.fill")
                        .foregroundColor(self.color)
                }
                .padding(.horizontal, 25)
                
                Text(self.error)
                    .foregroundColor(self.color)
                    .padding(.top)
                    .padding(.horizontal, 25)
                
                
                Button(action: {
                    
                    self.alert.toggle()
                    
                }) {
                    Text("Cancel")
                        .padding(.vertical)
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 120)
                }
                .background(self.color)
                .cornerRadius(10)
                .padding(.top, 25)
            }
            .frame(width: UIScreen.main.bounds.width - 70)
            .background(Color.white)
            .cornerRadius(15)
            .padding(.vertical, 25)

            
    
//        }
//        .background(Color.black.opacity(0.35).edgesIgnoringSafeArea(.all))
    }
}
