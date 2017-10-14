Joshua Isaacson, jsisaacs@iu.edu
Deduct It!
October 13, 2017

All parts of the assignment are completed.
I think my table view is interesting because the cells are custom made.
Changes (SEE BELOW IN PART A)
Final Project

A.
Changes to the app since Homework 104:
I removed the settings view, switched the dashboard view for a 
statistics view that has 3 Views with labels associated with each that
update live in the background whenever an expense is created or deleted.
There is also functionality for deleting expenses which was not thought of
at Homework 104.  A splash screen was also added.  I also added persistent 
data storage as well as persistent settings.  Added a settings view which 
has the persisted storage for the user.

B.
For my app, I set up persistent data storage with the NSCoding protocol,
both in the Expense.swift model as well as the AppDelegate file so that
it can work with the app's lifecycle.  For settings, I use key-value pairs
stored in NSUserDefaults.  The settings allow the user to provide a username
and name.

C.
-The parent view is a tab bar controller, one tab is a navigation controller connecting to
The statistics view controller.  When the Settings icon is pressed, it takes the user to another navigation controller, connecting to the settings view controller which has 
The persisted settings UserDefaults username.  The other tab is a navigation controller connected to a table view, expense view controller, and when the + icon is pressed, it takes the user to a navigation controller connected to the Add expense view.  The last view is when the user clicks the category table cell, taking them to the Choose Category view.

On the Statistics view, there are 3 views added, one for total spent, number of expenses logged, and most common category.  In the settings view, there is a label which is connected to the username from UserDefaults via the Settings.bundle.

D.
The fully top-level Container View Controller and its sub-MVCs are all fully functional.

E.
The model is completely functional.  It is the file Expense.swift and GlobalVariables.swift.

F.
The connections between the app model and all the MVCs in the app are fully functional.
