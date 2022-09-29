//
//  RegisterView.swift
//  zzper-assistant
//
//  Created by berk tuna on 04/09/2022.
//

import SwiftUI

struct LoginView: View {
    @State var username = ""
    @State var password = ""

    var body: some View {
        NavigationView {
            VStack {
                Form {

                        Section {
                            TextField("gebruikersnaam", text: $username)
                            SecureField("wachtwoord", text: $password)
                        } footer: {
                            
                            Button(
                                action: {} ,
                                label: {
                                    Text("inloggen")
                                        .frame(width: 350, height: 50, alignment: .center)
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(8)
                                })
                        }
                    
                    
                }.padding(.top, 70)

                NavigationLink(
                    destination: RegisterView(),
                    label: {
                        HStack {
                            Text("Heb je geen account? ")
                                .font(.system(size: 16, weight: .semibold ))
                                .foregroundColor(.gray)
                            Text("Account aanmaken")
                                .font(.system(size: 16, weight: .semibold ))
                        }

                            
                    })
            
            }.navigationTitle("Inloggen ")
            
        }
    }
}

func sectionFooter(){
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .preferredColorScheme(.dark)
    }
}


//Section{ footer: {
//    Button(
//        action: {} ,
//        label: {
//            Text("inloggen")
//                .frame(width: 350, height: 50, alignment: .center)
//                .background(Color.blue)
//                .foregroundColor(.white)
//                .cornerRadius(8)
//        })
//}
//{
//    TextField("gebruikersnaam", text: $username)
//    SecureField("wachtwoord", text: $password)
//}
