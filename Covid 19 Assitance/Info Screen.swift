//
//  Info Screen.swift
//  Covid 19 Assitance
//
//  Created by Central States SER Mac 20 on 12/15/21.
//

import SwiftUI

struct Info_Screen: View {
    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                Image("Side")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .offset(x:0, y:-48)
                
            } .frame(height: 220)
            
            
        VStack(alignment: .leading, spacing: 15) {
                HStack{
                }
            
                Group{
        Text("FREE Rapid & PCR Testing Little Village")
            .font(.title)
            .bold()
            .padding(.horizontal)
            Divider()
          
                    
       
        Text("Location:")
            .font(.custom("body", size: 23))
            .bold()
            .padding(.horizontal)
            
      
        Text("Atlantic Mall - 3948 W 26th St #110, Chicago, IL, 60623, US")
            .font(.custom("body", size: 20))
            .padding(.horizontal)
            Divider()
           
      
        Text("Phone Number:")
            .font(.custom("body", size: 23))
            .bold()
            .padding(.horizontal)
           
       
        Text("(440) 291-3812")
            .font(.custom("body", size: 20))
            .padding(.horizontal)
            Divider()
                }
            
                Group {
        Text("Information:")
            .font(.custom("body", size: 23))
            .bold()
            .padding(.horizontal)
       
        Text("-Appointment Not Nequired")
            .font(.custom("body", size: 20))
            .padding(.horizontal)
    
        Text("-Referral Not Required")
            .font(.custom("body", size: 20))
            .padding(.horizontal)
            
        Text("-Testing For All Patients")
            .font(.custom("body", size: 20))
            .padding(.horizontal)
           Divider()
        
        Text("Instructions:")
            .font(.custom("body", size: 23))
            .bold()
            .padding(.horizontal)
                    
        Text("Conducting free coronavirus testing (COVID-19). No appointments necessary! Patients must be at least 18 years of age or have their parent/guardian present. Please feel free to walk up anytime during our normal business hours.")
            .font(.custom("body", size: 20))
            .padding(.horizontal)
            Divider()
                
        Text("Website Link:")
            .font(.custom("body", size: 23))
            .bold()
            .padding(.horizontal)
                    
    Link("https://centerforcovidcontrol.org",
         destination: URL(string: "https://centerforcovidcontrol.org")!)
        .padding(.horizontal)
                    
 
                    }
            
            }.padding(.horizontal)
       
        }
    }
}

struct Info_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Info_Screen()
    }
}
