#  Trying TableView in UIKit

To try out a simple `UITableView` in UIKit, follow these steps:
1. Add TableView to your ViewController.
2. Add constraints = 0 to all sides.
3. Create an outlet for the TableView.
4. Add the necessary protocols to your ViewController:
   - `UITableViewDataSource`
   - `UITableViewDelegate`
5. Set the TableView's data source and delegate to the ViewController.
6. Implement the required methods for the data source:
    - `tableView(_:numberOfRowsInSection:)` to specify the number of rows.
    - `tableView(_:cellForRowAt:)` to configure and return the cell for each row.
7. Optionally, implement delegate methods to handle user interactions.
    - `tableView(_:didSelectRowAt:)` to respond to row selections.
        - Implement performSegue method if you want to navigate to another ViewController on cell selection and prepare for segue method to pass data.
    - `tableView(_:commit:forRowAt:)` to handle row deletions or insertions.
        - Implement deleteRows and insertRows methods to update the TableView accordingly.

Here is a simple example of how to implement a `UITableView` in a `UIViewController`:

```swift
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataArray.count // Return the number of rows based on your data source
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
    cell.textLabel?.text = dataArray[indexPath.row] // Configure the cell with data
    
    // or
    // let cell = UITableViewCell(style: .default, reuseIdentifier: "cellIdentifier")
    // cell.textLabel?.text = dataArray[indexPath.row]
    // or 
    // let cell = UITableViewCell()
    // cell.textLabel?.text = dataArray[indexPath.row]
    // or 
    // let cell = UITableViewCell()
    // let content = defaultContentConfiguration()
    // content.text = dataArray[indexPath.row]
    // cell.contentConfiguration = content
    
     return cell
}
```
