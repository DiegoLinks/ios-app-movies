import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    @State private var movies: [Movie] = []
    @State private var isLoading = true
    @State private var errorMessage: String?

    var body: some View {
        NavigationView {
            Group {
                if isLoading {
                    ProgressView("Loading...")
                } else if let errorMessage = errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                } else {
                    List(movies) { movie in
                        MovieCardView(movie: movie)
                    }
                }
            }
            .onAppear(perform: fetchPopularMovies)
            .navigationTitle("Popular Movies")
        }
    }

    private func fetchPopularMovies() {
        APIManager.shared.getPopularMovies { result in
            switch result {
            case .success(let movies):
                self.movies = movies
                self.isLoading = false
            case .failure(let error):
                self.errorMessage = error.localizedDescription
                self.isLoading = false
            }
        }
    }
}

struct MovieCardView: View {
    let movie: Movie

    var body: some View {
        VStack(alignment: .leading) {
            WebImage(url: URL(string: movie.coverImage))
                .resizable()
                .indicator(.activity)
                .transition(.fade(duration: 0.5))
                .scaledToFit()
                .frame(width: 308, height: 500)
            
            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.headline)
                Text(movie.genre)
                    .font(.subheadline)
                Text("Year: \(movie.releaseYear)")
                    .font(.subheadline)
                Text("Director: \(movie.director)")
                    .font(.subheadline)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

#Preview {
    ContentView()
}
