//
//  ContentView.swift
//  Weather
//
//  Created by Todimu Jenrola on 2021-05-15.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    @State var darkMode = false
    
    
    var body: some View {
        ZStack{
            
            BackgroundView(isNight: $isNight)
            
            
            VStack{
                CityTextView(cityName: "Toronto, ON")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill": "cloud.sun.fill", temperature: 76)
            
                HStack(spacing: 20){
                    
                    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 84)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.rain.fill", temperature: 78)
                    WeatherDayView(dayOfWeek: "THU", imageName: "smoke.fill", temperature: 68)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.moon.rain.fill", temperature: 66)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.sun.rain.fill", temperature: 69)
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                    darkMode.toggle()
                } label: {
                    WeatherButton(title: darkMode ? "Day Mode" : "Dark Mode", textColor: isNight ? .white: .blue,
                                  backgroundColor: isNight ? Color("darkGray") : .white)
                }
                
                Spacer()
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(alignment:.center, spacing: 6){
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 24, weight: .medium))
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 24, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView : View {
//    var topColor: Color
//    var bottomColor: Color
    
    @Binding var isNight: Bool
     
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [isNight ?  .black : .blue,
                                                isNight ? .gray: Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}


struct CityTextView: View {
    var cityName: String
    
    var body: some View{
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}


struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    
    var body: some View {
        VStack(spacing: 6){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 80)
    }
}
