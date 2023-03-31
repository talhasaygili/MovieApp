//
//  DetailViewController.swift
//  MovieApp
//
//  Created by Talha Saygılı on 30.03.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var directorName: UILabel!
    @IBOutlet weak var movieYear: UILabel!
    @IBOutlet weak var movieLang: UILabel!
    @IBOutlet weak var movieGenre: UILabel!
    var movieName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let detailedMovie: MovieModel = getMovie(movieName){
            movieLabel.text = detailedMovie.title
            let url = URL(string: detailedMovie.poster)
            movieImage.load(url: url!)
            movieImage.layer.cornerRadius = movieImage.frame.height / 2
            directorName.text = detailedMovie.director
            movieYear.text = detailedMovie.year
            movieLang.text = detailedMovie.language
            movieGenre.text = detailedMovie.genre
            
            
        }
            

    }
}


func getMovie(_ movie: String) -> MovieModel?{
    if let movie = dummyMovies.first(where: {$0.title == movie}) {
        return movie
    } else {
        return nil
    }
}
