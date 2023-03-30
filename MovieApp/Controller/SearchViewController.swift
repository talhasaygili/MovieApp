//
//  SearchViewController.swift
//  MovieApp
//
//  Created by Talha Saygılı on 17.03.2023.
//

import UIKit
import Firebase

class SearchViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var collectionView: UICollectionView!
    var movieLabel: String = ""
    
    var movieManager = MovieManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Search Page Loaded..
        searchTextField.delegate = self
        
    }
    
    @IBAction func detailButtonTapped(_ sender: Any) {
        // Detail Button Tapped
        let button = sender as? UIButton
        print("BUTTON: \(button!)")
        if (button?.titleLabel!.text) != nil{
            movieLabel = (button?.titleLabel!.text)!
        }
        //print("Button Label = \(buttonLabel)")
        Analytics.logEvent("to_detail", parameters: nil)
        performSegue(withIdentifier: "toDetail", sender: self)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail"{
            if let vc = segue.destination as? DetailViewController{
                vc.movieName = movieLabel
            }
        }
    }
    
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        searchTextField.endEditing(true)
    }
    

}


// MARK: - UICollectionView

extension SearchViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dummyMovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as! MovieCollectionViewCell
        cell.setup(with: dummyMovies[indexPath.row])
        return cell
    }
}


extension SearchViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 500, height: 500)
    }
}


extension SearchViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(dummyMovies[indexPath.row].title)
    }
}

// MARK: - UITextFieldDelegate

extension SearchViewController: UITextViewDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        //print(searchTextField.text!)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if searchTextField.text != "" {
            print("Text: \(String(describing: searchTextField.text))")
            return true
        }else{
            searchTextField.placeholder = "Type Valid Movie Name"
            return false
        }
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if let movieName = searchTextField.text{
            movieManager.fetchMovie(movieName: movieName)
        }
        
        searchTextField.text = ""
    }
}


// MARK: - MovieManagerDelegate

extension SearchViewController: MovieManagerDelegate{
    func didMovieSearched(movieManager: MovieManager, movie: MovieModel) {
        DispatchQueue.main.async {
            // In the Dispatch Queue
        }
    }
    
    func didFailProcess(error: Error) {
        print(error)
    }
    
    
}
