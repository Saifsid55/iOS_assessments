//
//  ViewController.swift
//  Framework
//
//  Created by Mohd Saif on 15/11/21.
//

import UIKit
import EventKit

class ViewController: UIViewController {

    let eventStore = EKEventStore()
    var time = Date()
    var date: String = ""
    var startTime: String = ""
    @IBOutlet weak var EventNameTF: UITextField!
    @IBOutlet weak var DateData: UIDatePicker!
    @IBOutlet weak var EventHoursTF: UITextField!
    @IBOutlet weak var DescriptionTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func checkAuthorization(){
        // authorizaion status basically returns the authorization status
        switch EKEventStore.authorizationStatus(for: .event) {
        case .authorized:
            insertEvent(store: eventStore)
            case .denied:
                print("Access denied")
            case .notDetermined:
            // In case of not determined
                eventStore.requestAccess(to: .event, completion:
                  {[weak self] (granted: Bool, error: Error?) -> Void in
                      if granted {
                        self!.insertEvent(store: self!.eventStore)
                      } else {
                            print("Access denied")
                      }
                })
                default:
                    print("Case default")
        }
    }
    
    func insertEvent(store: EKEventStore) {
        let event:EKEvent = EKEvent(eventStore: store)
        let startDate = DateData.date
        print(startDate)
        let hours = Double(EventHoursTF.text ?? "1")!
        let endDate = startDate.addingTimeInterval(hours * 60 * 60)
        event.title = EventNameTF.text
        event.startDate = startDate
        event.endDate = endDate
        event.notes = DescriptionTF.text
        event.calendar = store.defaultCalendarForNewEvents
        do {
            try store.save(event, span: .thisEvent)
            } catch let error as NSError {
        print("failed to save event with error : \(error)")
        }
        print("Saved Event")
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
    }
    
    @IBAction func DoneBtn(_ sender: UIButton) {
        checkAuthorization()
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        self.navigationController?.pushViewController(vc,animated: true)
    }
    
}

   
