//
//  ContentView.swift
//  SXEas
//
//  Created by Evan Matthew on 22/2/2568 BE.
/*
 
 
 d888888o.  `8.`8888.      ,8' 8 8888888888            .8.            d888888o.
.`8888:' `88. `8.`8888.    ,8'  8 8888                 .888.         .`8888:' `88.
8.`8888.   Y8  `8.`8888.  ,8'   8 8888                :88888.        8.`8888.   Y8
`8.`8888.       `8.`8888.,8'    8 8888               . `88888.       `8.`8888.
`8.`8888.       `8.`88888'     8 888888888888      .8. `88888.       `8.`8888.
 `8.`8888.      .88.`8888.     8 8888             .8`8. `88888.       `8.`8888.
  `8.`8888.    .8'`8.`8888.    8 8888            .8' `8. `88888.       `8.`8888.
8b   `8.`8888.  .8'  `8.`8888.   8 8888           .8'   `8. `88888.  8b   `8.`8888.
`8b.  ;8.`8888 .8'    `8.`8888.  8 8888          .888888888. `88888. `8b.  ;8.`8888
`Y8888P ,88P'.8'      `8.`8888. 8 888888888888 .8'       `8. `88888. `Y8888P ,88P'
 ___.
 \_ |__  ___.__.
  | __ \<   |  |
  | \_\ \\___  |
  |___  // ____|
      \/ \/
 ___________                           _____            __     __   .__
 \_   _____/___  _______     ____     /     \  _____  _/  |_ _/  |_ |  |__    ____ __  _  __
  |    __)_ \  \/ /\__  \   /    \   /  \ /  \ \__  \ \   __\\   __\|  |  \ _/ __ \\ \/ \/ /
  |        \ \   /  / __ \_|   |  \ /    Y    \ / __ \_|  |   |  |  |   Y  \\  ___/ \     /
 /_______  /  \_/  (____  /|___|  / \____|__  /(____  /|__|   |__|  |___|  / \___  > \/\_/
         \/             \/      \/          \/      \/                   \/      \/

 */

import SwiftUI

import MapKit

import Foundation



let countriesWithCodeAndEmoji: [String: (String, String)] = [
    "USA": ("+1", "🇺🇸"),
    "Canada": ("+1", "🇨🇦"),
    "Germany": ("+49", "🇩🇪"),
    "Australia": ("+61", "🇦🇺"),
    "India": ("+91", "🇮🇳"),
    "Brazil": ("+55", "🇧🇷"),
    "China": ("+86", "🇨🇳"),
    "Russia": ("+7", "🇷🇺"),
    "Mexico": ("+52", "🇲🇽"),
    "Japan": ("+81", "🇯🇵"),
    "France": ("+33", "🇫🇷"),
    "United Kingdom": ("+44", "🇬🇧"),
    "Italy": ("+39", "🇮🇹"),
    "Spain": ("+34", "🇪🇸"),
    "South Korea": ("+82", "🇰🇷"),
    "Argentina": ("+54", "🇦🇷"),
    "South Africa": ("+27", "🇿🇦"),
    "Turkey": ("+90", "🇹🇷"),
    "Saudi Arabia": ("+966", "🇸🇦"),
    "Egypt": ("+20", "🇪🇬"),
    "Pakistan": ("+92", "🇵🇰"),
    "Indonesia": ("+62", "🇮🇩"),
    "Thailand": ("+66", "🇹🇭"),
    "Vietnam": ("+84", "🇻🇳"),
    "Poland": ("+48", "🇵🇱"),
    "Ukraine": ("+380", "🇺🇦"),
    "Sweden": ("+46", "🇸🇪"),
    "Norway": ("+47", "🇳🇴"),
    "Denmark": ("+45", "🇩🇰"),
    "Finland": ("+358", "🇫🇮"),
    "Belgium": ("+32", "🇧🇪"),
    "Netherlands": ("+31", "🇳🇱"),
    "Switzerland": ("+41", "🇨🇭"),
    "Austria": ("+43", "🇦🇹"),
    "Greece": ("+30", "🇬🇷"),
    "Czech Republic": ("+420", "🇨🇿"),
    "Hungary": ("+36", "🇭🇺"),
    "Portugal": ("+351", "🇵🇹"),
    "Israel": ("+972", "🇮🇱"),
    "Chile": ("+56", "🇨🇱"),
    "Peru": ("+51", "🇵🇪"),
    "Nigeria": ("+234", "🇳🇬"),
    "Kenya": ("+254", "🇰🇪"),
    "Malaysia": ("+60", "🇲🇾"),
    "Singapore": ("+65", "🇸🇬"),
    "New Zealand": ("+64", "🇳🇿"),
    "Philippines": ("+63", "🇵🇭"),
    "Bangladesh": ("+880", "🇧🇩"),
    "Iraq": ("+964", "🇮🇶"),
    "Kuwait": ("+965", "🇰🇼"),
    "Qatar": ("+974", "🇶🇦"),
    "United Arab Emirates": ("+971", "🇦🇪"),
    "Oman": ("+968", "🇴🇲"),
    "Bahrain": ("+973", "🇧🇭"),
    "Jordan": ("+962", "🇯🇴"),
    "Lebanon": ("+961", "🇱🇧"),
    "Sri Lanka": ("+94", "🇱🇰"),
    "Nepal": ("+977", "🇳🇵"),
    "Myanmar": ("+95", "🇲🇲"),
    "Cambodia": ("+855", "🇰🇭"),
    "Laos": ("+856", "🇱🇸"),
    "Mongolia": ("+976", "🇲🇳"),
    "Kazakhstan": ("+7", "🇰🇿"),
    "Uzbekistan": ("+998", "🇺🇿"),
    "Azerbaijan": ("+994", "🇦🇿"),
    "Armenia": ("+374", "🇦🇲"),
    "Georgia": ("+995", "🇬🇪"),
    "Belarus": ("+375", "🇧🇾"),
    "Lithuania": ("+370", "🇱🇹"),
    "Latvia": ("+371", "🇱🇻"),
    "Estonia": ("+372", "🇪🇪"),
    "Slovakia": ("+421", "🇸🇰"),
    "Croatia": ("+385", "🇭🇷"),
    "Slovenia": ("+386", "🇸🇮"),
    "Bosnia and Herzegovina": ("+387", "🇧🇦"),
    "Serbia": ("+381", "🇷🇸"),
    "Montenegro": ("+382", "🇲🇪"),
    "Kosovo": ("+383", "🇽🇰"),
    "Albania": ("+355", "🇦🇱"),
    "North Macedonia": ("+389", "🇲🇰"),
    "Malta": ("+356", "🇲🇹"),
    "Cyprus": ("+357", "🇨🇾"),
    "Iceland": ("+354", "🇮🇸"),
    "Malawi": ("+265", "🇲🇼"),
    "Zimbabwe": ("+263", "🇿🇼"),
    "Mozambique": ("+258", "🇲🇿"),
    "Angola": ("+244", "🇦🇴"),
    "Ghana": ("+233", "🇬🇭"),
    "Ethiopia": ("+251", "🇪🇹")
]

/*
 Button(action: {
     // Action when country is tapped
 }) {
     Text("\(country) - \(countryInfo.0) \(countryInfo.1)")
 }

 */

import SwiftUI

struct CountriesView: View {
    
    @State private var showAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    
    let alert = countryAlert()
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.purple, .blue]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            .blur(radius: 50)
            
            VStack {
                Text("Supported countries")
                    .bold()
                    .font(.title2)
                List {
                    Section(header: Text("North America")) {
                        ForEach(["USA", "Canada"], id: \.self) { country in
                            if let countryInfo = countriesWithCodeAndEmoji[country] {
                                Button(action: {
                                    self.alertTitle = country
                                    self.alertMessage = "\(countryInfo.0) \(countryInfo.1)"
                                    self.showAlert = true
                                }) {
                                    Text("\(country) - \(countryInfo.0) \(countryInfo.1)")
                                }
                                
                                .sheet(isPresented: $showAlert) {
                                    VStack(spacing: 20) {
                                        Text(alertTitle)
                                            .font(.title)
                                            .bold()
                                        Text(alertMessage)
                                            .font(.body)
                                        
                                        Button("OK") {
                                            showAlert = false
                                        }
                                        .padding()
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                    }
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 4))
                                    .shadow(color: Color.blue, radius: 10)
                                }
                                
                            }
                        }
                    }
                    
                    Section(header: Text("Europe")) {
                        ForEach(["Germany", "France", "Italy", "Spain", "United Kingdom"], id: \.self) { country in
                            if let countryInfo = countriesWithCodeAndEmoji[country] {
                                Button(action: {
                                    self.alertTitle = country
                                    self.alertMessage = "\(countryInfo.0) \(countryInfo.1)"
                                    self.showAlert = true
                                }) {
                                    Text("\(country) - \(countryInfo.0) \(countryInfo.1)")
                                }
                                .sheet(isPresented: $showAlert) {
                                    VStack(spacing: 20) {
                                        Text(alertTitle)
                                            .font(.title)
                                            .bold()
                                        Text(alertMessage)
                                            .font(.body)
                                        
                                        Button("OK") {
                                            showAlert = false
                                        }
                                        .padding()
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                    }
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 4))
                                    .shadow(color: Color.blue, radius: 10)
                                }

                            }
                        }
                    }
                    
                    Section(header: Text("Asia")) {
                        ForEach(["India", "China", "Japan", "South Korea"], id: \.self) { country in
                            if let countryInfo = countriesWithCodeAndEmoji[country] {
                                Button(action: {
                                    self.alertTitle = country
                                    self.alertMessage = "\(countryInfo.0) \(countryInfo.1)"
                                    self.showAlert = true
                                }) {
                                    Text("\(country) - \(countryInfo.0) \(countryInfo.1)")
                                }
                                .sheet(isPresented: $showAlert) {
                                    VStack(spacing: 20) {
                                        Text(alertTitle)
                                            .font(.title)
                                            .bold()
                                        Text(alertMessage)
                                            .font(.body)
                                        
                                        Button("OK") {
                                            showAlert = false
                                        }
                                        .padding()
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                    }
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 4))
                                    .shadow(color: Color.blue, radius: 10)
                                }

                            }
                        }
                    }
                    
                    Section(header: Text("Other Countries")) {
                        ForEach(["Brazil", "Russia", "Mexico", "Argentina", "South Africa", "Saudi Arabia", "Egypt", "Pakistan", "Indonesia", "Thailand", "Vietnam", "Poland", "Ukraine", "Sweden", "Norway", "Denmark", "Finland", "Belgium", "Netherlands", "Switzerland", "Austria", "Greece", "Czech Republic", "Hungary", "Portugal", "Israel", "Chile", "Peru", "Nigeria", "Kenya", "Malaysia", "Singapore", "New Zealand", "Philippines", "Bangladesh", "Iraq", "Kuwait", "Qatar", "United Arab Emirates", "Oman", "Bahrain", "Jordan", "Lebanon", "Sri Lanka", "Nepal", "Myanmar", "Cambodia", "Laos", "Mongolia", "Kazakhstan", "Uzbekistan", "Azerbaijan", "Armenia", "Georgia", "Belarus", "Lithuania", "Latvia", "Estonia", "Slovakia", "Croatia", "Slovenia", "Bosnia and Herzegovina", "Serbia", "Montenegro", "Kosovo", "Albania", "North Macedonia", "Malta", "Cyprus", "Iceland", "Malawi", "Zimbabwe", "Mozambique", "Angola", "Ghana", "Ethiopia"], id: \.self) { country in
                            if let countryInfo = countriesWithCodeAndEmoji[country] {
                                Button(action: {
                                    self.alertTitle = country
                                    self.alertMessage = "\(countryInfo.0) \(countryInfo.1)"
                                    self.showAlert = true
                                }) {
                                    Text("\(country) - \(countryInfo.0) \(countryInfo.1)")
                                }
                                
                                .sheet(isPresented: $showAlert) {
                                    VStack(spacing: 20) {
                                        Text(alertTitle)
                                            .font(.title)
                                            .bold()
                                        Text(alertMessage)
                                            .font(.body)
                                        
                                        Button("OK") {
                                            showAlert = false
                                        }
                                        .padding()
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                    }
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 4))
                                    .shadow(color: Color.blue, radius: 10)
                                }
                                
                            }
                        }
                    }
                }
            } // VStack
        } // ZStack
    }
}
















//Cool custom Visual effect that brings cool blur style

struct VisualEffectView: UIViewRepresentable {
    var blurStyle: UIBlurEffect.Style
    var intensity: Int = 50  // Default intensity to 2, you can adjust this
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let effect = UIBlurEffect(style: blurStyle)
        let view = UIVisualEffectView(effect: effect)
        applyMultipleBlurs(to: view)
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        let effect = UIBlurEffect(style: blurStyle)
        uiView.effect = effect
        applyMultipleBlurs(to: uiView)
    }
    
    private func applyMultipleBlurs(to view: UIVisualEffectView) {
        guard intensity > 1 else { return }
        for _ in 1..<intensity {
            let additionalEffect = UIBlurEffect(style: blurStyle)
            let additionalBlurView = UIVisualEffectView(effect: additionalEffect)
            additionalBlurView.frame = view.bounds
            view.contentView.addSubview(additionalBlurView)
        }
    }
}





// Objective-C class init
let whenButtonClicked = WhenButtonClicked()

struct ContentView: View {
    @State private var didTap = false
    var body: some View {
        


        NavigationView {
            ZStack {
                
                LinearGradient(
                    gradient: Gradient(colors: [.purple, .blue]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 50)
                
                VStack(alignment: .center) {
                    Text("Shedevro")
                        .font(.largeTitle)
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [.black, .purple]),
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .padding(0.0)
                    Text("the amazing world of Gamble")
                    
                    Button("before proceeding!") {
                        
                        whenButtonClicked.showMessageBox(withTitle: "Warning", message: "Our app collects all allowed data for our internal services")
                        didTap = true
                    }
            
                    .bold()
                    .font(.title2)
                    .foregroundStyle(
                        LinearGradient(
                            gradient: Gradient(colors: [.black, .purple]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .padding()
                    .frame(width: 250)
                    .background(
                        ZStack {
                            Color.black.opacity(0.1)
                                .blur(radius: 10)
                        }
                    )
                    .background(didTap ? Color.green : Color.black.opacity(0.1))
                    .cornerRadius(30)
                    
                }
                .padding(.bottom, 130)
                
                VStack {
                    Spacer() // Push the content upwards
                    ZStack {
                        NavigationLink(destination: MapView()) {
                            Text("dox your homies")
                        }
                        .bold()
                        .font(.title2)
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [.purple, .black]),
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .padding() // Apply padding here
                        .frame(width: 250) // Set a fixed width to make the capsule longer horizontally
                        .background(
                            ZStack {
                                Color.black.opacity(0.1)
                                    .blur(radius: 10) // Apply blur effect
                            }
                        )
                        .cornerRadius(30)
                    }
                    .padding(.bottom, 255) // Adjust this to move it further from the bottom
                }

                VStack {
                    Text("♡ UI by dildoDEV ♡")
                        .frame(maxHeight: .infinity, alignment: .bottom)
                        .padding()
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [.black, .purple]),
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                }
                
            }
            .navigationBarTitle("Shedevro Dil + Doe", displayMode: .inline)
            .navigationBarBackButtonHidden(true) // Hide back button
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                  //  Button("Countires") { /* Action */ }
                    NavigationLink(destination: CountriesView()) {
                        Text("Countries")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("More") { /* Action */ }
                }
            }
            .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)

            

            .background(
                VisualEffectView(blurStyle: .systemUltraThinMaterialDark)
                    .cornerRadius(30)
                    .padding(50)
                    .padding(.top, 150)
                    .padding(.bottom, 130)
            )
        }
    }
}





let privacyPolicy = """
Privacy Policy (LOL, What Privacy?)

Last Updated: Never (Because We Don’t Care)

Welcome to the original developed DILDO WARE or SXware project , the only software that respects your privacy by completely ignoring it. This privacy policy exists purely for legal reasons, not because we actually believe in privacy. By using this tool, you automatically forfeit any expectation of secrecy, confidentiality, or common sense.

1. What Data We Collect?
Oh, you sweet summer child. We collect everything. If it exists on the internet, we’ll probably find it. If it doesn’t exist, we’ll just assume it does and make something up. This includes but is not limited to:
- Your name, address, email, phone number, and that embarrassing MySpace account you forgot about.
- Your IP address (duh), ISP, and geolocation because why not?
- Any and all online aliases, including the one you use to argue with strangers at 3 AM.

2. How We Use Your Data?
Honestly, we’re not sure. Maybe we’ll frame it and hang it on a wall. Maybe we’ll sell it to the highest bidder. Maybe we’ll just sit back and watch the chaos unfold. Here are a few ideas:
- To improve our tool (read: make it more invasive).
- To keep a personal collection of bad password choices.
- To remind you that true privacy is a myth.

3. How We Protect Your Data?
We don’t. Security is a buzzword. If someone wants your data, they’ll probably just take it. And honestly, if you’re using this tool, you should already know that.

4. Sharing Your Data?
Absolutely. With anyone who asks. Or doesn’t ask. We believe in transparency—yours, not ours.

5. Your Rights?
You have the right to:
- Pretend you read this.
- Cry a little.
- Accept your fate.

6. Changes to This Policy?
We’ll update it whenever we feel like it. Maybe we’ll add more sarcasm. Maybe we’ll just replace it with a picture of a middle finger. Check back never.

By using this tool, you agree that privacy is a joke and we’re the comedians. Have fun!
"""




struct MapView: View {
   
    var body: some View {
        
        ZStack {
            
            LinearGradient(
                gradient: Gradient(colors: [.blue, .purple]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            .blur(radius: 50)
            
            
            VStack {
                
                
                Map(initialPosition: .region(region))
                    .frame(height: 300)
                HStack {
                    Button(action: {
                        guard let url = URL(string: "https://t.me/Evan_Matthew") else { return }
                        UIApplication.shared.open(url)
                    }) {
                        Image(systemName: "questionmark.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    
                    Spacer() // Pushes buttons apart
                    
                    Button(action: {
                        let target = WhenTargetClicked()
                        target.showTargetMessageBox(withTitle: "Privacy & Policy", message: privacyPolicy)
                    }) {
                        Image(systemName: "exclamationmark.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                .padding()

                
                Text("Prepare to be doxed😈😈😈")
                    .font(.title)
                    .fontWeight(.semibold)
                Button("Target the final") {
                    let target = WhenTargetClicked()
                                  target.showTargetMessageBox(withTitle: "Before dox.", message: "Do you want to proceed?😭")
                }
                .font(.title2)
                .foregroundStyle(
                    LinearGradient(
                        gradient: Gradient(colors: [.black, .purple]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding()
                .frame(width: 300) // Set a fixed width to make the capsule longer horizontally
                .background(
                    ZStack {
                        Color.black.opacity(0.2)
                            .blur(radius: 10) // Apply blur effect
                    }
                )
                .cornerRadius(30)
                
                Button("**DO IT💀**") {
                    
                    let target = WhenTargetClicked()
                                  target.showTargetMessageBox(withTitle: "The request is sent!", message: "This can take time lol😭")
                }
                .font(.title2)
                .foregroundStyle(
                    LinearGradient(
                        gradient: Gradient(colors: [.black, .purple]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding()
                .frame(width: 300) // Set a fixed width to make the capsule longer horizontally
                .background(
                    ZStack {
                        Color.black.opacity(0.2)
                            .blur(radius: 10) // Apply blur effect
                    }
                )
                .cornerRadius(30)
                
                Spacer()
                
                Text("♡ UI by dildoDEV ♡")
                    .padding()
                    .foregroundStyle(
                           LinearGradient(
                               gradient: Gradient(colors: [.black, .purple]),
                               startPoint: .top,
                               endPoint: .bottom
                           )
                           
                       )
                


            }
            .frame(maxHeight: .infinity, alignment: .top)
        }
    }
    private var region: MKCoordinateRegion {
          MKCoordinateRegion(
              center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
              span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
          )
      }
}

