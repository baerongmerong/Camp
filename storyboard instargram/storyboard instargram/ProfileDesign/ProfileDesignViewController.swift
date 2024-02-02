//
//  ProfileDesignViewController.swift
//  storyboard instargram
//
//  Created by Bae on 2/2/24.
//

import UIKit

class ProfileDesignViewController: UIViewController {
    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var profileImage: [String] = ["picture", "picture 1", "picture 2", "picture 3", "picture 4", "picture 5", "picture 6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        followButton.backgroundColor = UIColor(red: 56/256,
                                               green: 152/256,
                                               blue: 243/256,
                                               alpha: 1)
        followButton.titleLabel?.textColor = .white
        followButton.layer.cornerRadius = 4
        
        
        messageButton.titleLabel?.textColor = .black
        messageButton.layer.cornerRadius = 4
        messageButton.layer.borderWidth = 1.5
        messageButton.layer.borderColor = UIColor(red: 218/256,
                                                  green: 218/256,
                                                  blue: 218/256,
                                                  alpha: 1).cgColor
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumInteritemSpacing = 2
        flowLayout.minimumLineSpacing = 2
        
        collectionView.collectionViewLayout = flowLayout
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
}
extension ProfileDesignViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profileImage.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProfileDesignCell.reuseIdentifier, for: indexPath) as? ProfileDesignCell else {
            return UICollectionViewCell()
        }
        cell.imageView.image = UIImage(named: profileImage[indexPath.row]) ?? UIImage()
        
        return cell
    }
}
    extension ProfileDesignViewController: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            let width = (collectionView.bounds.width - 4) / 3
            
            return CGSize(width: width, height: width)
        }
    }
    
    extension ProfileDesignViewController: UICollectionViewDelegate {
        
    }

