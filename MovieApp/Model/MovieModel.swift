//
//  MovieModel.swift
//  MovieApp
//
//  Created by Talha Saygılı on 17.03.2023.
//

import Foundation


struct MovieModel{
    var title: String
    var year: String
    var language: String
    var poster: String
    var director: String
    var genre: String
}





var dummyMovies: [MovieModel] = [
   MovieModel(title: "Ride", year: "2014", language: "English", poster: "https://m.media-amazon.com/images/M/MV5BMTU1Njc1Mzk4NF5BMl5BanBnXkFtZTgwMTU2MzQ3NDE@._V1_SX300.jpg", director: "Helen Hunt", genre: "Comedy, Drama"),
   MovieModel(title: "The Lord of the Rings: The Return of the King", year: "2003", language: "English, Quenya, Old English, Sindarin", poster: "https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg", director: "Peter Jackson", genre: "Action, Adventure, Drama"),
   MovieModel(title: "Spartacus", year: "2010–2013", language: "English, German", poster: "https://m.media-amazon.com/images/M/MV5BZWQ4MjA2YzEtOTQzYi00NWQ1LWI0ZDEtN2VkZjhmYTc3MzU0XkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_SX300.jpg", director: "N/A", genre: "Action, Adventure, Biography"),
   MovieModel(title: "Transformers", year: "2007", language: "English, Spanish", poster: "https://m.media-amazon.com/images/M/MV5BNDg1NTU2OWEtM2UzYi00ZWRmLWEwMTktZWNjYWQ1NWM1OThjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg", director: "Michael Bay", genre: "Action, Adventure, Sci-Fi"),
   MovieModel(title: "Rise", year: "2022", language: "English, Turkish, Greek, Hausa", poster: "https://m.media-amazon.com/images/M/MV5BNzdkNDBmMWYtM2JjMC00Yjk4LWFmNzMtNTJkODg2YTM3MmQ5XkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_SX300.jpg", director: "Akin Omotoso", genre: "Biography, Drama, Sport"),
   MovieModel(title: "Father", year: "2020", language: "Serbian", poster: "https://m.media-amazon.com/images/M/MV5BYTQ2MTU0MjktN2U2MS00YzIxLWJlMzEtN2FmYjNhZDdmYWJjXkEyXkFqcGdeQXVyOTY1MzIzMjU@._V1_SX300.jpg", director: "Srdan Golubovic", genre: "Drama"),
   MovieModel(title: "My Neighbor Totoro", year: "1988", language: "Japanese", poster: "https://m.media-amazon.com/images/M/MV5BYzJjMTYyMjQtZDI0My00ZjE2LTkyNGYtOTllNGQxNDMyZjE0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg", director: "Hayao Miyazaki", genre: "Animation, Comedy, Family"),
   MovieModel(title: "You Were Never Really Here", year: "2017", language: "English", poster: "https://m.media-amazon.com/images/M/MV5BMDkwOTE0ZjMtZmRiYS00M2M3LWE3MzUtNzNmNmExNTNmNjg5XkEyXkFqcGdeQXVyODE1MjMyNzI@._V1_SX300.jpg", director: "Lynne Ramsay", genre: "Crime, Drama"),
   MovieModel(title: "How to Train Your Dragon", year: "2010", language: "English", poster: "https://m.media-amazon.com/images/M/MV5BMjA5NDQyMjc2NF5BMl5BanBnXkFtZTcwMjg5ODcyMw@@._V1_SX300.jpg", director: "Dean DeBlois, Chris Sanders", genre: "Animation, Action, Adventure"),
   MovieModel(title: "Go", year: "1999", language: "English", poster: "https://m.media-amazon.com/images/M/MV5BNDczYTcyN2EtYjM1NC00YjI3LWE4ZWItMGFlNmEwOTAxYjdiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_SX300.jpg", director: "Doug Liman", genre: "Comedy, Crime"),
   MovieModel(title: "28 Days Later", year: "2002", language: "English, Spanish", poster: "https://m.media-amazon.com/images/M/MV5BYTFkM2ViMmQtZmI5NS00MjQ2LWEyN2EtMTI1ZmNlZDU3MTZjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg", director: "Danny Boyle", genre: "Drama, Horror, Sci-Fi"),
   MovieModel(title: "Bottle Rocket", year: "1996", language: "English, Spanish", poster: "https://m.media-amazon.com/images/M/MV5BNzFlYWQxMjMtYTdmOC00NDA0LWI5NWQtNjc5OTc1ZDdkOGExXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_SX300.jpg", director: "Wes Anderson", genre: "Comedy, Crime, Drama"),
   MovieModel(title: "Paris", year: "2008", language: "French", poster: "https://m.media-amazon.com/images/M/MV5BMTMxNjMxNjMwOF5BMl5BanBnXkFtZTcwMjA1OTIxMw@@._V1_SX300.jpg", director: "Cédric Klapisch", genre: "Comedy, Drama, Romance")
]


/*
 
 MovieModel(title: "Transformers", year: "2007", language: "English, Spanish", poster: "https://m.media-amazon.com/images/M/MV5BNDg1NTU2OWEtM2UzYi00ZWRmLWEwMTktZWNjYWQ1NWM1OThjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg", director: "Michael Bay", genre: "Action, Adventure, Sci-Fi")
 
 MovieModel(title: "Rise", year: "2022", language: "English, Turkish, Greek, Hausa", poster: "https://m.media-amazon.com/images/M/MV5BNzdkNDBmMWYtM2JjMC00Yjk4LWFmNzMtNTJkODg2YTM3MmQ5XkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_SX300.jpg", director: "Akin Omotoso", genre: "Biography, Drama, Sport")
 
 MovieModel(title: "Love", year: "2015", language: "English, French", poster: "https://m.media-amazon.com/images/M/MV5BZGQxZTFlZDctZjcyMy00NzA1LWFkMDYtNzRmZTkwYTFhYTc3XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_SX300.jpg", director: "Gaspar Noé", genre: "Drama, Romance"),
 
 MovieModel(title: "Father", year: "2020", language: "Serbian", poster: "https://m.media-amazon.com/images/M/MV5BYTQ2MTU0MjktN2U2MS00YzIxLWJlMzEtN2FmYjNhZDdmYWJjXkEyXkFqcGdeQXVyOTY1MzIzMjU@._V1_SX300.jpg", director: "Srdan Golubovic", genre: "Drama"),
 
 MovieModel(title: "My Neighbor Totoro", year: "1988", language: "Japanese", poster: "https://m.media-amazon.com/images/M/MV5BYzJjMTYyMjQtZDI0My00ZjE2LTkyNGYtOTllNGQxNDMyZjE0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg", director: "Hayao Miyazaki", genre: "Animation, Comedy, Family"),
 
 MovieModel(title: "You Were Never Really Here", year: "2017", language: "English", poster: "https://m.media-amazon.com/images/M/MV5BMDkwOTE0ZjMtZmRiYS00M2M3LWE3MzUtNzNmNmExNTNmNjg5XkEyXkFqcGdeQXVyODE1MjMyNzI@._V1_SX300.jpg", director: "Lynne Ramsay", genre: "Crime, Drama"),
 
 MovieModel(title: "How to Train Your Dragon", year: "2010", language: "English", poster: "https://m.media-amazon.com/images/M/MV5BMjA5NDQyMjc2NF5BMl5BanBnXkFtZTcwMjg5ODcyMw@@._V1_SX300.jpg", director: "Dean DeBlois, Chris Sanders", genre: "Animation, Action, Adventure"),
 
 MovieModel(title: "Go", year: "1999", language: "English", poster: "https://m.media-amazon.com/images/M/MV5BNDczYTcyN2EtYjM1NC00YjI3LWE4ZWItMGFlNmEwOTAxYjdiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_SX300.jpg", director: "Doug Liman", genre: "Comedy, Crime"),
 
 MovieModel(title: "28 Days Later", year: "2002", language: "English, Spanish", poster: "https://m.media-amazon.com/images/M/MV5BYTFkM2ViMmQtZmI5NS00MjQ2LWEyN2EtMTI1ZmNlZDU3MTZjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg", director: "Danny Boyle", genre: "Drama, Horror, Sci-Fi"),
 
 MovieModel(title: "Bottle Rocket", year: "1996", language: "English, Spanish", poster: "https://m.media-amazon.com/images/M/MV5BNzFlYWQxMjMtYTdmOC00NDA0LWI5NWQtNjc5OTc1ZDdkOGExXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_SX300.jpg", director: "Wes Anderson", genre: "Comedy, Crime, Drama"),
 
 
 MovieModel(title: "Paris", year: "2008", language: "French", poster: "https://m.media-amazon.com/images/M/MV5BMTMxNjMxNjMwOF5BMl5BanBnXkFtZTcwMjA1OTIxMw@@._V1_SX300.jpg", director: "Cédric Klapisch", genre: "Comedy, Drama, Romance")
 
 */
