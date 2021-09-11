import SwiftUI

struct FruitCardView: View {
    // PROPERTIES
    
    // BODY
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("ColorBlueBerryLight"), Color.red]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                
                Text("Blueberry")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 2), radius: 2, x: 2, y: 2)
                
                Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20 )
                    .padding(.top, 20)
                    .frame(maxWidth: 500)
                
            }
        }
    }
}

    // PREVIEW

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
    }
}
