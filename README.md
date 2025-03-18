# zylentrix_assignment
Flutter API Fetching App with Provider

A Flutter application that **fetches and displays posts** from an API (`https://jsonplaceholder.typicode.com/posts`) using **Provider for state management**. The app provides a seamless user experience with **loading indicators, error handling, and a retry option**.


**App Demonstration**

 **Fetching & Displaying Data**
When the app launches, it fetches posts from the API and displays them in a **scrollable ListView**.

![List View](https://via.placeholder.com/500x300?text=List+View)

 **Loading State**
A `CircularProgressIndicator` is shown while data is being fetched.

![Loading Indicator](https://via.placeholder.com/500x300?text=Loading...)

### ❌ **Error Handling**
If an error occurs (e.g., no internet), an error message appears with a **Retry** button.



## 🚀 **Features**

✅ **Fetch & Display Posts** – Retrieves and displays posts from an API  
✅ **State Management** – Uses `Provider` for efficient data handling  
✅ **Loading Indicator** – Shows progress while fetching data  
✅ **Error Handling** – Displays error message with retry option  
✅ **Clean & Simple UI** – Uses `ListTile` with `CircleAvatar` for a modern look  
✅ **Optimized Performance** – Asynchronous API fetching


## 📂 **Project Structure**  

How It Works
1. Fetching Data from API
-The app makes a GET request to https://jsonplaceholder.typicode.com/posts using the http package.
-The response is parsed into a list of PostModel objects.

2. State Management with Provider
- PostProvider fetches data and notifies UI when data is ready.
- ChangeNotifier is used for reactive updates.

3. Displaying Data in ListView
  - Data is displayed using ListView.builder().
  -  Each item has an ID badge, title, and body text.

4. Error Handling with Retry Button
   -If API fails, an error message with a Retry button appears.
   dart
   
