# To Do List App

### This app is written using MVVM pattern. Every class in View-group represents one view. This project uses Firebase for user authentication and database management.

* Firebase Authentication is used to handle user authentication, allowing existing users to sign in and new users to create accounts. The `LoginViewViewModel` class is responsible for handling the login logic, while the `RegisterViewViewModel` class is responsible for handling the registration logic. 
* When a new user creates an account, their information is inserted into a Firestore database using the `insertUserRecord` method in the `RegisterViewViewModel` class. This method creates a new document in the "users" collection of the Firestore database. 
ToDoListItems are also stored in Firestore. Users can create a new to-do item using the `save` method in the `NewItemViewViewModel` class. This method takes creates a new document in the "todos" subcollection of the user's document in the "users" collection. 

* In the `MainView` class, there is a tab view with two tabs: "Home" and "Profile". The "Home" tab displays the `ToDoListView`, which shows a list of the user's to-do items. The "Profile" tab displays the `ProfileView`, which shows the user's profile information. The `MainView` class uses the `MainViewViewModel` class to determine which view to display to the user. Initially if the user is signed in and the current user ID is not empty, it displays the `ProfileView`. If the user is not signed in or the current user ID is empty, it displays the `LoginView`.


* `ToDoListView`: This class displays a list of the user's to-do items. It also uses the FirestoreQuery property wrapper to fetch the user's to-do items from Firestore. In this application, it is used to fetch the user's to-do items from the "todos" subcollection of the user's document in the "users" collection in Firebase. The delete method in the `ToDoListViewViewModel` class is used to delete a to-do item from Firestore.
* `NewItemView`: When the user taps the "+" button in the navigation bar of the "Home" tab, this class is displayed. It allows the user to create a new to-do item. In `NewItemViewViewModel` class there are `save` method which is used to save the new item to Firestore. The `canSave` property is used to determine whether or not the new item can be saved.
* `RegisterView`: Users can create a new account there. In `RegisterViewViewModel` class is handled user input and registration. It displays a form with name, email, and password fields, and a register button. Once the user creates an account, their information is inserted into a Firestore database.
* `LoginView`: This class allows users to log in to their account. It displays a form with email and password fields, and a login button. If the user does not have an account, they can create one by clicking on the "Create an account" link. After this action user will be moved to `RegisterView`. There users are managed to create a new account. It displays a form with name, email, and password fields, and a register button. Once the user creates an account, their information is inserted into a Firestore database.
* `ProfileView`: There user can see his profile information, including name, email, and join date. An instance of a `ProfileViewViewModel` class is used to fetch the user's data from Firestore and log the user out. The `ProfileViewViewModel` class uses Firebase Authentication to get the current user's ID, and then uses Firestore to fetch the user's data from the "users" collection. There are alse `logOut` method in the ProfileViewViewModel class which is used to sign the user out of their account.



