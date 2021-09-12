import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnBoarding") var isOnBoarding : Bool?
    
    var body: some View {
        Button(action: {
//            print("Exit the onboarding")
            isOnBoarding = false
        }, label: {
            HStack(spacing: 8.0) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        })
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
