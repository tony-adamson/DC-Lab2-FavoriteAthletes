//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Антон Адамсон on 21.04.2023.
//

import UIKit

class AthleteFormViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var ageTF: UITextField!
    @IBOutlet weak var leagueTF: UITextField!
    @IBOutlet weak var teamTF: UITextField!
    
    var athlete: Athlete?
    
    init?(coder: NSCoder, athlete: Athlete?) {
        self.athlete = athlete
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        updateView()
    }
    

    func updateView() {
        guard let athlete = athlete else { return }
    }
    
    @IBAction func saveButtonAction(_ sender: Any) {
        guard let name = nameTF.text,
            let ageString = ageTF.text,
            let age = Int(ageString),
            let league = leagueTF.text,
            let team = teamTF.text else { return }
        
            athlete = Athlete(name: name, age: age, league: league, team: team)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
