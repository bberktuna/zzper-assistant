//
//  RegisterView.swift
//  zzper-assistant
//
//  Created by berk tuna on 04/09/2022.
//

import SwiftUI

struct RegisterView: View {
    @State var username = ""
    @State var password = ""
    @State var email = ""
    @State var passwordAgain = ""

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("gebruikersnaam", text: $username)
                        TextField("email", text: $email)
                    }
                    Section(footer:
                                Button(
                                    action: {} ,
                                    label: {
                                        Text("account aanmaken")
                                            .frame(width: 340, height: 50, alignment: .center)
                                            .background(Color.blue)
                                            .foregroundColor(.white)
                                            .cornerRadius(8)
                                    })
                                .padding())
                    {
                        SecureField("wachtwoord", text: $password)
                        SecureField("wachtwoord bevestigen", text: $passwordAgain)
                    }
                    
                    
                }.padding(.top, 30)

                NavigationLink(
                    destination: RegisterView(),
                    label: {
                        HStack {
                            Text("Heb je al een account? ")
                                .font(.system(size: 16, weight: .semibold ))
                                .foregroundColor(.gray)
                            Text("Inloggen")
                                .font(.system(size: 16, weight: .semibold ))
                        }

                            
                    })
            
            }.navigationTitle("Account aanmaken ")
            
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .preferredColorScheme(.dark)
    }
}
