//
//  MovieManager.swift
//  MovieApp
//
//  Created by Talha Saygılı on 17.03.2023.
//

import Foundation

protocol MovieManagerDelegate{
    func didMovieSearched(movieManager: MovieManager, movie: MovieModel)
    func didFailProcess(error: Error)
}

struct MovieManager{
    let movieURL = "https://www.omdbapi.com/?i=tt3896198&apikey=2a91ea1c"
    
    var delegate: MovieManagerDelegate?
    
    func fetchMovie(movieName: String){
        let urlString = "\(movieURL)&t=\(movieName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String){
        // 1. Create URL
        if let url = URL(string: urlString){
            print("Created URL -> \(url)")
            
            // 2. Create a URL Session
            let session = URLSession(configuration: .default)
            print("Created URL Session")
            
            // 3. Give the session a task
            let task = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
                if error != nil{
                    delegate?.didFailProcess(error: error!)
                    return
                }
                
                if let safeData = data{
                    if let movie = self.parseJSON(movieData: safeData){
                        self.delegate?.didMovieSearched(movieManager: self, movie: movie)
                        // Parsed
                    }
                }
                print("Task given to the session")
            }
            
            // 4. Start the task
            task.resume()
            print("Task Started!")

        }
    }
    
    func parseJSON(movieData: Data) -> MovieModel? {
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(MovieData.self, from: movieData)
            let title = decodedData.Title
            let year = decodedData.Year
            let language = decodedData.Language
            let poster = decodedData.Poster
            let director = decodedData.Director
            let genre = decodedData.Genre
            

            print("Title: \(title)")
            print("Year: \(year)")
            print("Language: \(language)")
            
            
            let movie = MovieModel(title: title, year: year, language: language, poster: poster, director: director, genre: genre)
            print("Movie: \(movie)")
            return movie
        }
        catch{
            delegate?.didFailProcess(error: error)
            return nil
        }
    }
}
