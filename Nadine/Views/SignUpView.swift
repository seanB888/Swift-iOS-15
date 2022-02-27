//
//  SignUpView.swift
//  Nadine
//
//  Created by SEAN BLAKE on 2/26/22.
//

import SwiftUI

struct SignUpView: View {
    @State var email = ""
    @State var password = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Sign Up")
                .font(.largeTitle).bold()
            Text("Access 120+ hours of courses, \ntutorials and livestreams")
                .font(.headline)
            
            // email address field
            TextField("Email", text: $email)
                .inputStyle(icon: "mail")
                .textContentType(.emailAddress)
                .keyboardType(UIKeyboardType.emailAddress)
                .autocapitalization(.none)
                .disableAutocorrection(true)

            // password field
            SecureField("Password", text: $password)
                .inputStyle(icon: "lock")
                .textContentType(.password)

            // submit button
            Button {} label: {
                Text("Create a account")
                    .frame(maxWidth: .infinity)
            }
            .font(.headline)
            .blendMode(.overlay)
            .buttonStyle(.angular)
            .tint(.accentColor)
            .controlSize(.large)

            // agreement area
            Group {
                Text("By clicking on ")
                + Text("__Create an account__").foregroundColor(.primary.opacity(0.7))
                + Text(", you agree to our **Terms of Service** and **[Privacy Policy](https://5fourlab.com)**")

                Divider()

                HStack {
                    Text("Already have an account?")

                    Button {} label: {
                        Text("**Sign in**")
                    }
                }
            }
            .font(.footnote)
            .foregroundColor(.secondary)
            .accentColor(.secondary)
        }
        .padding(20)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .strokeStyle(cornerRadius: 30)
        .shadow(color: Color("Shadow").opacity(0.2), radius: 30, x: 0, y: 30)
        .background(
            Image("Blob 1").offset(x: 200, y: -100)
        )
        .padding(.horizontal, 20)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()




    }
}
