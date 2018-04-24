# Grasping the concept alone:

Build and explore the intricacies of Swift with this calculator:
https://itunes.apple.com/fr/course/developing-ios-9-apps-swift/id1104579961?l=en

# Getting a hang in Swift

## A 3 step project:

### 1st step - GridView Clicker app

Our first goal is to get used to the dfferent instructions and lifecycles of a swift application.  

We shall create a single view app that contains a display area and a scrollable gridview that the user can interact with.
The gridview is composed of at least 5 buttons, each of them unique in colour and name, the view must be scrollable and each button, on click, should modify the display area to represent the button touched.

The view containts a view, a gridview with an array of at least 5 buttons. Each of these buttons are different in color and have seperate titles.

Elements:

- UIView
- UIViewController
- UIApplicationDelegate
- UIButton, (with & w/o .system type) 

- NSLayoutConstaints

Lifecyle elements:  

- viewDidLoad()
- updateViewConstraints()

### 2nd Step - Navigation Controller

Add a menu page to the application. The app should start on a main page that implements navigation control. 
From this main page we should be able to launch the 'GridView Clicker app'

The user can navigate backwards thanks to the navigation Bar.

Elements:

- UIWindow
- UINavigationController
- UINavigationBar

### 3rd Step - Asteroid clicker

This should be a simple view with a single button in the view. when the button is released a small square should appear. This square is of a random color, and it travels the screen with a random speed and direction. When the square reaches a side it should 'bounce' off. 
The squares are "alive for 5 seconds", after which they are removed.

This 2nd app will be accessible by the menu.

