//
//  ViewController.swift
//  lapApi0
//
//  Created by MAC on 09/04/1443 AH.
//
    
    import UIKit



    class ViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            getData()
            // Do any additional setup after loading the view.
        }

    //https://zenquotes.io/api/quotes/author/

        func getData() {
            var authorURL = URLComponents()
            authorURL.scheme = "https"
            authorURL.host = "zenquotes.io"
            authorURL.path = "/api/quotes/author/"
            
            let AutherRequestURL = authorURL.url!
            let AutherRequest = URLRequest(url: AutherRequestURL)
            
            let SessionConfig = URLSessionConfiguration.default
               SessionConfig.allowsCellularAccess = false
               SessionConfig.httpShouldSetCookies = false
               
               let AutherSession = URLSession(configuration: SessionConfig)
                   
           //        Trigger Session Data Task method (Response)
                   let fetchDataTask = AutherSession.dataTask(with: AutherRequest) {
                       (data: Data!, response: URLResponse?, err: Error?) in
                       print(String(data: data, encoding: .utf8))
                   }
                   
                   fetchDataTask.resume()
        }
        
    // Do any additional setup after loading the view.
    }



