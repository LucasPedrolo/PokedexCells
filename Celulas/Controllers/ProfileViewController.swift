//
//  ViewController.swift
//  Celulas
//
//  Created by unicred on 13/12/22.
//

import UIKit

class ProfileViewController: UIViewController {

  
    private let cellId = "cellId"
    var profiles: [Profile]?
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ProfileCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        pokemons()
    }
    
    func pokemons(){
        
        let pokemon1 = Profile()
        pokemon1.name = "Bulbasaur"
        pokemon1.type = "GP"
        pokemon1.number = "#001"
        pokemon1.image = "001"
        
        let pokemon2 = Profile()
        pokemon2.name = "Ivysaur"
        pokemon2.type = "GP"
        pokemon2.number = "#002"
        pokemon2.image = "002"
        
        let pokemon3 = Profile()
        pokemon3.name = "Venussaur"
        pokemon3.number = "#003"
        pokemon3.image = "003"
        pokemon3.type = "GP"
        
        let pokemon4 = Profile()
        pokemon4.name = "Charmander"
        pokemon4.type = "F"
        pokemon4.number = "#004"
        pokemon4.image = "004"
        
        let pokemon5 = Profile()
        pokemon5.name = "Charmeleon"
        pokemon5.type = "F"
        pokemon5.number = "#005"
        pokemon5.image = "005"
        
        let pokemon6 = Profile()
        pokemon6.name = "Charizard"
        pokemon6.type = "FF"
        pokemon6.number = "#006"
        pokemon6.image = "006"
        
        let pokemon7 = Profile()
        pokemon7.name = "Squirtle"
        pokemon7.type = "W"
        pokemon7.number = "#007"
        pokemon7.image = "007"
        
        let pokemon8 = Profile()
        pokemon8.name = "Wartortle"
        pokemon8.type = "W"
        pokemon8.number = "#008"
        pokemon8.image = "008"
        
        let pokemon9 = Profile()
        pokemon9.name = "Blastoise"
        pokemon9.type = "W"
        pokemon9.number = "#009"
        pokemon9.image = "009"
        
        let pokemon10 = Profile()
        pokemon10.name = "Caterpie"
        pokemon10.type = "B"
        pokemon10.number = "#010"
        pokemon10.image = "010"
        
        let pokemon11 = Profile()
        pokemon11.name = "Metapod"
        pokemon11.type = "B"
        pokemon11.number = "#011"
        pokemon11.image = "011"
        
        let pokemon12 = Profile()
        pokemon12.name = "Butterfree"
        pokemon12.type = "BFly"
        pokemon12.number = "#012"
        pokemon12.image = "012"
        
        let pokemon13 = Profile()
        pokemon13.name = "Weedle"
        pokemon13.type = "BP"
        pokemon13.number = "#013"
        pokemon13.image = "013"
        
        let pokemon14 = Profile()
        pokemon14.name = "Kakuna"
        pokemon14.type = "B"
        pokemon14.number = "#014"
        pokemon14.image = "014"
        
        let pokemon15 = Profile()
        pokemon15.name = "Beedrill"
        pokemon15.type = "BP"
        pokemon15.number = "#015"
        pokemon15.image = "015"
        
        let pokemon16 = Profile()
        pokemon16.name = "Pidgey"
        pokemon16.type = "NFly"
        pokemon16.number = "#016"
        pokemon16.image = "016"
        
        let pokemon17 = Profile()
        pokemon17.name = "Pidgeotto"
        pokemon17.type = "NFly"
        pokemon17.number = "#017"
        pokemon17.image = "017"
        
        let pokemon18 = Profile()
        pokemon18.name = "Pidgeot"
        pokemon18.type = "NFly"
        pokemon18.number = "#018"
        pokemon18.image = "018"
        
        let pokemon19 = Profile()
        pokemon19.name = "Rattata"
        pokemon19.type = "N"
        pokemon19.number = "#019"
        pokemon19.image = "019"
        
        let pokemon20 = Profile()
        pokemon20.name = "Raticate"
        pokemon20.type = "N"
        pokemon20.number = "#020"
        pokemon20.image = "020"
        
        let pokemon21 = Profile()
        pokemon21.name = "Spearow"
        pokemon21.type = "NFly"
        pokemon21.number = "#021"
        pokemon21.image = "021"
        
        let pokemon22 = Profile()
        pokemon22.name = "Fearow"
        pokemon22.type = "NFly"
        pokemon22.number = "#022"
        pokemon22.image = "022"
        
        let pokemon23 = Profile()
        pokemon23.name = "Ekans"
        pokemon23.type = "P"
        pokemon23.number = "#023"
        pokemon23.image = "023"
        
        let pokemon24 = Profile()
        pokemon24.name = "Arbok"
        pokemon24.type = "P"
        pokemon24.number = "#024"
        pokemon24.image = "024"
        
        let pokemon25 = Profile()
        pokemon25.name = "Pikachu"
        pokemon25.type = "E"
        pokemon25.number = "#025"
        pokemon25.image = "025"
        
        profiles = [pokemon1, pokemon2, pokemon3, pokemon4, pokemon5, pokemon6, pokemon7, pokemon8, pokemon9, pokemon10, pokemon11, pokemon12, pokemon13, pokemon14, pokemon15, pokemon16, pokemon17, pokemon18, pokemon19, pokemon20, pokemon21, pokemon22, pokemon23, pokemon24, pokemon25]
    }
    
}


extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = profiles?.count {
            return count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ProfileCollectionViewCell
        
        if let items = profiles?[indexPath.item] {
            cell.profile = items
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 80)
    }
    
}

