import SwiftUI

struct CircleImage: View {
    var body: some View {
        VStack {
            ZStack {
                Image("logo") // Ensure this is a valid image in your assets
                    .resizable() // Allows the image to be resized
                    .scaledToFit() // Ensures the aspect ratio is maintained
                    .clipShape(Circle()) // Clips it into a circle
                    .frame(width: 120, height: 120)
            }
            .padding(.top, 55) // Adjusts top padding to give space

            Text("SXdildo")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top) // Positions the text at the top
                .offset(y: 20) // Adjust if you want to move the text down a bit
        }
        .edgesIgnoringSafeArea(.top)
    }
}


struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

