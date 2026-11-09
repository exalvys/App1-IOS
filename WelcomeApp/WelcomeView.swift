import SwiftUI

struct WelcomeView: View {
    @State private var showMessage = false

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.035, green: 0.075, blue: 0.14),
                    Color(red: 0.055, green: 0.16, blue: 0.29),
                    Color(red: 0.025, green: 0.09, blue: 0.18)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 24) {
                Spacer()

                ZStack {
                    RoundedRectangle(cornerRadius: 28, style: .continuous)
                        .fill(Color.white.opacity(0.09))
                        .frame(width: 104, height: 104)
                        .overlay {
                            RoundedRectangle(cornerRadius: 28, style: .continuous)
                                .stroke(Color.white.opacity(0.16), lineWidth: 1)
                        }

                    Image(systemName: "sparkles")
                        .font(.system(size: 42, weight: .medium))
                        .foregroundStyle(Color(red: 0.35, green: 0.72, blue: 1.0))
                }

                VStack(spacing: 10) {
                    Text("Bienvenue !")
                        .font(.system(size: 34, weight: .bold, design: .rounded))
                        .foregroundStyle(.white)

                    Text("Welcome App")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                        .foregroundStyle(Color(red: 0.40, green: 0.75, blue: 1.0))

                    Text("Ta première application iPhone est prête à prendre vie.")
                        .font(.system(size: 16, weight: .regular, design: .rounded))
                        .foregroundStyle(Color.white.opacity(0.72))
                        .multilineTextAlignment(.center)
                        .lineSpacing(4)
                        .padding(.horizontal, 28)
                        .padding(.top, 6)
                }

                Spacer()

                Button {
                    withAnimation(.spring(response: 0.35, dampingFraction: 0.75)) {
                        showMessage.toggle()
                    }
                } label: {
                    HStack(spacing: 10) {
                        Text(showMessage ? "Bienvenue à bord !" : "C'est parti !")
                        Image(systemName: showMessage ? "checkmark" : "arrow.right")
                    }
                    .font(.system(size: 17, weight: .semibold, design: .rounded))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 18)
                    .background(
                        LinearGradient(
                            colors: [
                                Color(red: 0.12, green: 0.48, blue: 0.88),
                                Color(red: 0.20, green: 0.62, blue: 0.96)
                            ],
                            startPoint: .leading,
                            endPoint: .trailing
                        ),
                        in: RoundedRectangle(cornerRadius: 18, style: .continuous)
                    )
                }
                .buttonStyle(.plain)
                .padding(.horizontal, 28)

                Text("VERSION 1.0.0")
                    .font(.system(size: 11, weight: .medium, design: .rounded))
                    .tracking(2)
                    .foregroundStyle(Color.white.opacity(0.42))
                    .padding(.top, 8)
                    .padding(.bottom, 22)
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    WelcomeView()
}
