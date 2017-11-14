//
//  AlgorithomsView.swift
//  Ryan_CSP
//
//  Created by Sharp, Ryan on 10/26/17.
//  Copyright © 2017 Sharp, Ryan. All rights reserved.
//

import UIKit

class AlgorithomsView: UIViewController
{
    @IBOutlet weak var AlgorithmText: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []

        let algorithm :String = "These are the instructions to create a project in Java using Eclipse and Github \n"
        let stepOne :String = "First, ...."
        let stepTwo :String = "Second ...."
        let stepThree :String = ".... ..."

        algorithmSteps = [stepOne, stepTwo, stepThree]

        let attributesDictionary = [NSAttributedStringKey.font : AlgorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)

        for step in algorithmSteps
        {
            let bullet :String = "=["
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()

            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))

            fullAttributedString.append(attributedStringStep)
        }
        AlgorithmText.attributedText = fullAttributedString
    }
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
