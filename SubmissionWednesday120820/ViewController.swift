//
//  ViewController.swift
//  SubmissionWednesday120820
//
//  Created by Tushar Elangovan on 8/12/20.
//  Copyright © 2020 Tushar Elangovan. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let instaid = "instagramCellId"
    let youtid = "youtubeCellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Entering Function")
        setupviewcontroller()
      //  collectionView.backgroundColor = .red
        print("Exiting")
        // Do any additional setup after loading the view.
    }

    fileprivate func setupviewcontroller(){
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(InstagramCollectionViewCell.self, forCellWithReuseIdentifier: instaid)
        collectionView.register(YoutubeCell.self, forCellWithReuseIdentifier: youtid)
        collectionView.contentInset = UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0)
        
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }

     override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
       
        switch indexPath.item {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: instaid, for: indexPath) as! InstagramCollectionViewCell
                   return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: instaid, for: indexPath) as! InstagramCollectionViewCell
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.item {
        case 0:
            return CGSize(width: view.frame.width, height: 300)
        case 1:
            return CGSize(width: view.frame.width, height: 320)
        default:
            return CGSize(width: view.frame.width, height: 200)
        }
    }
}

