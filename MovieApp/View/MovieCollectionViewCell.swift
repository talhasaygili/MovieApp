//
//  MovieCollectionViewCell.swift
//  MovieApp
//
//  Created by Talha Saygılı on 17.03.2023.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieLabelButton: UIButton!
    
    
    func setup(with movie: MovieModel){
        
        let url = URL(string: movie.poster)

        movieLabelButton.setTitle(movie.title, for: .normal)
        movieImageView.load(url: url!)
    }
}

extension UIImageView{
    func load(url: URL){
        DispatchQueue.global().async {
            [weak self] in
            if let data = try? Data(contentsOf: url){
                if let image = UIImage(data: data){
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
