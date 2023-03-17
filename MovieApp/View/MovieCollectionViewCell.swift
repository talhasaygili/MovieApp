//
//  MovieCollectionViewCell.swift
//  MovieApp
//
//  Created by Talha Saygılı on 17.03.2023.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    func setup(with movie: MovieModel){
        movieLabel.text = movie.title
        movieImageView.image = UIImage(named: "night")
    }
}


