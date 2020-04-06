//
//  PopularMovieCellsCell.swift
//  CinemApp
//
//  Created by Josiah Agosto on 9/1/19.
//  Copyright © 2019 Josiah Agosto. All rights reserved.
//

import Foundation
import UIKit

// Inner Cell
class PopularMovieCellsView: UICollectionViewCell {
    // Movie Title
    public var movieTitle: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 225, width: 150, height: 50))
        // Label Text
        label.text = "Popular"
        label.numberOfLines = 0
        label.textAlignment = NSTextAlignment.left
        label.textColor = UIColor.white
        label.font = UIFont(name: "AvenirNext-DemiBold", size: 17)
        return label
    }()
    // Rating Image
    public var movieRatingImage: UIImageView = {
        let ratingImage = UIImageView(frame: CGRect(x: 0, y: 275, width: 15, height: 15))
        ratingImage.layer.cornerRadius = 5
        ratingImage.backgroundColor = UIColor.white
        return ratingImage
    }()
    // Poster Image
    public var moviePosterImage: UIImageView = {
        let posterImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 225))
        posterImage.layer.cornerRadius = 10
        posterImage.clipsToBounds = true
        posterImage.contentMode = .scaleAspectFill
        return posterImage
    }()
    // Movie Rating
    public var movieRating: UILabel = {
        let rating = UILabel(frame: CGRect(x: 28, y: 275, width: 100, height: 15))
        // Rating Text
        rating.text = "/10"
        rating.numberOfLines = 1
        rating.textAlignment = NSTextAlignment.left
        rating.textColor = UIColor.white
        rating.font = UIFont(name: "Avenir-Light", size: 18)
        return rating
    }()
    
    // MARK: - For Detail View
    public var backdropImage: UIImageView = {
        let backdrop = UIImageView()
        backdrop.layer.cornerRadius = 5
        backdrop.clipsToBounds = true
        backdrop.contentMode = .scaleAspectFill
        return backdrop
    }()
    public var id: UILabel = {
        let backdrop = UILabel()
        backdrop.text = ""
        return backdrop
    }()
    public var overview: UILabel = {
        let backdrop = UILabel()
        backdrop.text = ""
        return backdrop
    }()
    public var runtime: UILabel = {
        let backdrop = UILabel()
        backdrop.text = ""
        return backdrop
    }()
    public var releaseDate: UILabel = {
        let backdrop = UILabel()
        backdrop.text = ""
        return backdrop
    }()
    static let reuseIdentifier = "PopularCellsCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    
    private func setup() {
        backgroundColor = UIColor.clear
        addSubview(movieRatingImage)
        addSubview(movieRating)
        addSubview(movieTitle)
        addSubview(moviePosterImage)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
