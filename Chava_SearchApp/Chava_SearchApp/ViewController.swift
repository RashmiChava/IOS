//
//  ViewController.swift
//  Chava_SearchApp
//
//  Created by Rashmi Chava on 3/3/22.
//

import UIKit

class ViewController: UIViewController {

        
@IBOutlet weak var searchTextField: UITextField!
        
        @IBOutlet weak var resultImage: UIImageView!
        
        @IBOutlet weak var topicInfoText: UITextView!
        
        @IBOutlet weak var imageName: UILabel!
        
        @IBOutlet weak var searchButtonAction: UIButton!
        
        @IBOutlet weak var resetButton: UIButton!
        
        @IBOutlet weak var showPrevImagesBtn: UIButton!
        
        @IBOutlet weak var showNextImagesBtn: UIButton!
        
        var arr = [["actor1","actor2","actor3","actor4","actor5"],["flower1","flower2","flower3","flower4","flower5"],["animal1","animal2","animal3","animal4","animal5",],["bg","error"]]
        
        var actors = ["actor","actors","artist","Ram Pothineni","Akhil Akkineni","Mohanlal","deepika padukone","ranbir kapoor"]
        
        var flowers = ["flower","flowers","Rose","Orchid","Lilies","Tulip","Sunflower","bloom"]
        
        var animals = ["animal","animals", "Elephant","Giraffe","Horse","Jaguar","Kangaroo","Mammal"]
        
        var topic = 0
        var imag1:Int!
        var imag2:Int!
        var imag3:Int!
        var name1:Int!
        var name2:Int!
        var name3:Int!
        var text1:Int!
        var text2:Int!
        var text3:Int!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            showPrevImagesBtn.isHidden = true
            showNextImagesBtn.isHidden = true
            searchButtonAction.isEnabled = false
            resetButton.isHidden = true
            resultImage.image = UIImage(named: arr[3][0])
            topicInfoText.text = nil
            imageName.text = nil
        }
        
        @IBAction func searchTextField(_ sender: UITextField) {
            searchButtonAction.isEnabled = true
            if(sender.text == ""){
                searchButtonAction.isEnabled = false
                
            }
            else{
    //            showPrevImagesBtn.isHidden = false
    //            showNextImagesBtn.isHidden = false
                showPrevImagesBtn.isEnabled = false
                showNextImagesBtn.isEnabled = false
                searchButtonAction.isEnabled = true
                resetButton.isHidden = false
            }
    

        }
        
        
        var actor = [["Ram Pothineni","Akhil Akkineni","Mohanlal","deepika padukone","ranbir kapoor"],["Ram Pothineni (born 15 May 1988) is an Indian actor who works in Telugu films. He made his debut with Devadasu which won him a Filmfare Award for Best Male Debut – South. He then went onto to play the lead in successful films such as Ready, Kandireega, Pandaga Chesko, Nenu Sailaja, Vunnadhi Okate Zindagi, Hello Guru Prema Kosame, iSmart Shankar, and Red.","Akhil Akkineni (born 8 April 1994) is an American-born actor of Indian descent who works in Telugu films. He first appeared on screen at the age of one in Sisindri (1995) and debuted in a lead role with Akhil (2015). He has received two Filmfare Awards South. He is the captain of Telugu Warriors cricket team that competes in the Celebrity Cricket League.","Mohanlal Viswanathan (born 21 May 1960), known mononymously as Mohanlal, is an Indian actor, film producer, playback singer, television host and film distributor who predominantly works in Malayalam cinema besides also having sporadically appeared in Tamil, Telugu, Kannada and Hindi-language films.[1][2][3] Mohanlal has a prolific career spanning over four decades, during which he has acted in more than 340 films.","Deepika Padukone born 5 January 1986) is an Indian actress who works in Hindi films. One of the highest-paid actresses in India, her accolades include three Filmfare Awards. She features in listings of the nation's most popular personalities, and Time named her one of the 100 most influential people in the world in 2018.","Ranbir Kapoor born 28 September 1982) is an Indian actor. He is one of the highest-paid actors of Hindi cinema and has featured in Forbes India's Celebrity 100 list since 2012. Kapoor is the recipient of several awards, including six Filmfare Awards.The son of actors Rishi Kapoor and Neetu Singh, and the grandson of veteran actor-director Raj Kapoor, Kapoor pursued filmmaking and method acting at the School of Visual Arts and the Lee Strasberg Theatre and Film Institute, respectively."]]
        
        var flower = [["Rose","Orchid","Lilies","Tulip","Sunflower"],["A rose is a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over three hundred species and tens of thousands of cultivars. They form a group of plants that can be erect shrubs, climbing, or trailing, with stems that are often armed with sharp prickles.Their flowers vary in size and shape and are usually large and showy, in colours ranging from white through yellows and reds.","Orchidaceae, commonly called the orchid family, is a diverse and widespread family of flowering plants, with blooms that are often colourful and fragrant.Along with the Asteraceae, they are one of the two largest families of flowering plants. The Orchidaceae have about 28,000 currently accepted species, distributed in about 763 genera.","Lilium is a genus of herbaceous flowering plants growing from bulbs, all with large prominent flowers. They are the true lilies. Lilies are a group of flowering plants which are important in culture and literature in much of the world. Most species are native to the temperate northern hemisphere, though their range extends into the northern subtropics.","Tulips (Tulipa) are a genus of spring-blooming perennial herbaceous bulbiferous geophytes (having bulbs as storage organs). The flowers are usually large, showy and brightly colored, generally red, pink, yellow, or white (usually in warm colors). They often have a different colored blotch at the base of the tepals (petals and sepals, collectively), internally.","The sunflower (Helianthus annuus) is a living annual plant in the family Asteraceae, with a large flower head (capitulum). The stem of the flower can grow up to 3 metres tall, with a flower head that can be 30 cm wide. Other types of sunflowers include the California Royal Sunflower, which has a burgundy (red + purple) flower head."]]
    

        var animal = [["Elephant","Giraffe","Horse","Jaguar","Kangaroo"],["Elephants are the largest existing land animals. Three living species are currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant. They are an informal grouping within the proboscidean family Elephantidae. Elephantidae is the only surviving family of proboscideans; extinct members include the mastodons.","The giraffe is a tall African hoofed mammal belonging to the genus Giraffa. It is the tallest living terrestrial animal and the largest ruminant on Earth. Traditionally, giraffes were thought to be one species, Giraffa camelopardalis, with nine subspecies. Most recently, researchers proposed dividing giraffes into up to eight extant species due to new research into their mitochondrial and nuclear DNA, as well as morphological measurements.","The horse (Equus ferus caballus) is a domesticated, odd-toed, hoofed mammal. It belongs to the taxonomic family Equidae and is one of two extant subspecies of Equus ferus. The horse has evolved over the past 45 to 55 million years from a small multi-toed creature, Eohippus, into the large, single-toed animal of today. Humans began domesticating horses around 4000 BC, and their domestication is believed to have been widespread by 3000 BC.","The jaguar (Panthera onca) is a large cat species and the only living member of the genus Panthera native to the Americas. With a body length of up to 1.85 m (6 ft 1 in) and a weight of up to 96 kg (212 lb), it is the largest cat species in the Americas and the third largest in the world. Its distinctively marked coat features pale yellow to tan colored fur covered by spots that transition to rosettes on the sides, although a melanistic black coat appears in some individuals.","The kangaroo is a marsupial from the family Macropodidae. In common use the term is used to describe the largest species from this family, the red kangaroo, as well as the antilopine kangaroo, eastern grey kangaroo, and western grey kangaroo.[1] Kangaroos are indigenous to Australia and New Guinea. "]]
        
        
        
        @IBAction func searchButtonActionAction(_ sender: UIButton) {
            imag1 = 0
            imag2 = 0
            imag3 = 0
            name1 = 0
            name2 = 0
            name3 = 0
            text1 = 0
            text2 = 0
            text3 = 0
            showPrevImagesBtn.isHidden = false
            showNextImagesBtn.isHidden = false
            showPrevImagesBtn.isEnabled = false
            showNextImagesBtn.isEnabled = false
            resetButton.isEnabled = true
            if(actors.contains(searchTextField.text!)){
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = false
                resultImage.image = UIImage(named: arr[0][imag1])
                imageName.text = actor[0][name1]
                topic = 1
                topicInfoText.text = actor[1][text1]
            }
            else if(flowers.contains(searchTextField.text!)){
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = false
                resultImage.image = UIImage(named: arr[1][imag2])
                imageName.text = flower[0][name2]
                topic = 2
                topicInfoText.text = flower[1][text2]
            }
            else if(animals.contains(searchTextField.text!)){
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = false
                resultImage.image = UIImage(named: arr[2][imag3])
                imageName.text = animal[0][name3]
                topic = 3
                topicInfoText.text = animal[1][text3]
            }
            else{
                resultImage.image = UIImage(named: arr[3][1])
    //            resultImage.image = nil
                topicInfoText.text = nil
                imageName.text = nil
                showPrevImagesBtn.isHidden = true
                showNextImagesBtn.isHidden = true
                resetButton.isEnabled = true
            }
            
            
        }
        
        @IBAction func showPrevImagesBtn(_ sender: Any) {
            if(topic == 1){
                imag1 -= 1
                name1 -= 1
                text1 -= 1
                dataUpdate(imgNo: imag1)
            }
            if(topic == 2){
                imag2 -= 1
                name2 -= 1
                text2 -= 1
                dataUpdate(imgNo: imag2)
            }
            if(topic == 3){
                imag3 -= 1
                name3 -= 1
                text3 -= 1
                dataUpdate(imgNo: imag3)
            }
            
        }
        
        @IBAction func showNextImagesBtn(_ sender: Any) {
            if(topic == 1){
                imag1 += 1
                name1 += 1
                text1 += 1
                dataUpdate(imgNo: imag1)
            }
            if(topic == 2){
                imag2 += 1
                name2 += 1
                text2 += 1
                dataUpdate(imgNo: imag2)
            }
            if(topic == 3){
                imag3 += 1
                name3 += 1
                text3 += 1
                dataUpdate(imgNo: imag3)
            }
        }
        
        
        @IBAction func resetButton(_ sender: Any) {
            showPrevImagesBtn.isHidden = true
            showNextImagesBtn.isHidden = true
            resultImage.image = UIImage(named: arr[3][0])
            topicInfoText.text = nil
            imageName.text = nil
            searchTextField.text = nil
            resetButton.isHidden = true
            imag1 = 0
            imag2 = 0
            imag3 = 0
            name1 = 0
            name2 = 0
            name3 = 0
            text1 = 0
            text2 = 0
            text3 = 0
            topic = 0
            
            
        }
        
        func dataUpdate(imgNo: Int){
            if(topic == 1){
                if imag1 == arr[0].count-1 {
                    showNextImagesBtn.isEnabled = false
                    showPrevImagesBtn.isEnabled = true
                    resultImage.image = UIImage(named: arr[0][imag1])
                    imageName.text = actor[0][name1]
                    topicInfoText.text = actor[1][text1]
                }
                else if(imag1 == 0){
                    showPrevImagesBtn.isEnabled = false
                    showNextImagesBtn.isEnabled = true
                    resultImage.image = UIImage(named: arr[0][imag1])
                    imageName.text = actor[0][name1]
                    topicInfoText.text = actor[1][text1]
                }
                else{
                    showNextImagesBtn.isEnabled = true
                    showPrevImagesBtn.isEnabled = true
                    resultImage.image = UIImage(named: arr[0][imag1])
                    imageName.text = actor[0][name1]
                    topicInfoText.text = actor[1][text1]
                }
            }
            if(topic == 2){
                if imag2 == arr[1].count-1 {
                    showNextImagesBtn.isEnabled = false
                    showPrevImagesBtn.isEnabled = true
                    resultImage.image = UIImage(named: arr[1][imag2])
                    imageName.text = flower[0][name2]
                    topicInfoText.text = flower[1][text2]
                }
                else if(imag2 == 0){
                    showPrevImagesBtn.isEnabled = false
                    showNextImagesBtn.isEnabled = true
                    resultImage.image = UIImage(named: arr[1][imag2])
                    imageName.text = flower[0][name2]
                    topicInfoText.text = flower[1][text2]
                }
                else{
                    showNextImagesBtn.isEnabled = true
                    showPrevImagesBtn.isEnabled = true
                    resultImage.image = UIImage(named: arr[1][imag2])
                    imageName.text = flower[0][name2]
                    topicInfoText.text = flower[1][text2]
                    
                }
            }
            if(topic == 3){
                if imag3 == arr[1].count-1 {
                    showNextImagesBtn.isEnabled = false
                    showPrevImagesBtn.isEnabled = true
                    resultImage.image = UIImage(named: arr[2][imag3])
                    imageName.text = animal[0][name3]
                    topicInfoText.text = animal[1][text3]
                }
                else if(imag3 == 0){
                    showPrevImagesBtn.isEnabled = false
                    showNextImagesBtn.isEnabled = true
                    resultImage.image = UIImage(named: arr[2][imag3])
                    imageName.text = animal[0][name3]
                    topicInfoText.text = animal[1][text3]
                }
                else{
                    showNextImagesBtn.isEnabled = true
                    showPrevImagesBtn.isEnabled = true
                    resultImage.image = UIImage(named: arr[2][imag3])
                    imageName.text = animal[0][name3]
                    topicInfoText.text = animal[1][text3]
                    
                }
            }
        }
        
    }
    


