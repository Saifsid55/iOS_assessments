import UIKit
import PlaygroundSupport


//---------------------------------What is URLSession?---------------------


//URLSession is the class responsible for making HTTP request and getting HTTP response. In a really simplified analogy,think
//of URLSession as a web browser and it can have multiple tabs opening multiple website. Those tabs which request and
//load website data are URLSessionTask. One URLSession can have multiple URLSessionTask send request to different website.


//We can create a instance of URLSession like this :

//let config = URLSessionConfiguration.default
//let session = URLSession(configuration: config)




//---------------------------What are types of URLSessionConfiguration?----------------

//URLSession instance is initialized using URLSessionConfiguration.
//URLSessionConfiguration has three types :

//1--> .default - The URLSession will save cache / cookie into disk, credentials are saved to keychain
//
//2--> .ephemeral - This is similar to opening Incognito mode on Chrome or Private browsing on Firefox / Safari, cache / cookie / credential are stored in memory and will be gone once the session is terminated
//
//3--> .background - This allow the session to perform upload / download task in the background, meaning even if the app is suspended (in background), the upload / download task will still continue.




//----------------------What is  URLSessionTask?Explain Types of URLSessionTask?-------------------------



//URLSessionTask is the class responsible for making request to the web API and uploading / downloading data.
//
//There's 3 type of URLSessionTask :
//
//1--> URLSessionDataTask - Use this for sending HTTP GET / POST / PUT / DELETE request, the data retrieved from response
//is saved into Memory in NSData / Data form
//
//2--> URLSessionUploadTask - Use this for uploading file
//
//3--> URLSessionDownloadTask - Use this for downloading file



//----------------------------------Make a get request using URLSessionDataTask---------------------------------



//let config = URLSessionConfiguration.default
//let session = URLSession(configuration: config)
//let url1 = URL(string: "https://jsonplaceholder.typicode.com/posts")!
//let task = session.dataTask(with: url1){
//
//    (data, response, error) in
//    guard let httpResponse = response as? HTTPURLResponse,
//          httpResponse.statusCode == 200 else {
//        return
//    }
//    guard let data = data else {
//        print(error.debugDescription )
//        return
//    }
//    if let result = NSString(data: data, encoding: String.Encoding.utf8.rawValue) as String? {
//        print(result)
//    }
//
//    PlaygroundPage.current.finishExecution()
//}
//
//task.resume()

//----------------------------------------Make a post request using URLSessionDataTask.---------------------------------------


let url2 = URL(string: "https://jsonplaceholder.typicode.com/todos")
guard let requestUrl = url2 else { fatalError() }

// Prepare URL Request Object
var request = URLRequest(url: requestUrl)
request.httpMethod = "POST"

// HTTP Request Parameters which will be sent in HTTP Request Body
let postString = "userId=300&title=Saif's task&completed=true";

// Set HTTP Request Body
request.httpBody = postString.data(using: String.Encoding.utf8);

// Perform HTTP Request
let task = URLSession.shared.dataTask(with: request) { (data, response, error) in

        // Check for Error
        if let error = error {
            print("Error took place \(error)")
            return
        }

        // Convert HTTP Response Data to a String
        if let data = data, let dataString = String(data: data, encoding: .utf8) {
            print("Response data string:\n \(dataString)")
        }
}
task.resume()
