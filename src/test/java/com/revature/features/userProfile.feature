Feature: User Profile

# TEST-26
Scenario Outline: A user is NOT logged in, attempting to access the profile page (positive test)
Given I am logged in with <username> and <password> to the main page
When I click the user profile button
Then I should be taken to the user profile page for username <username>

Examples:
| username | password |
| "JohnDoeFake" | "password" | # TEST-26
| "MikeDingeldein" | "wordpass" | # TEST-26

# TEST-27
Scenario: A user is NOT logged in, attempting to access the profile page (negative test)
Given I am at the main page and not logged in
When I click the user profile button
Then I should see an error message of "Please login"

# TEST-28
Scenario Outline: A user is logged in, viewing the profile page (actually seeing their info) (positive test)
Given I am logged in with <username> and <password> at the main page
When I click the user profile button
Then I should be taken to the user profile page with <username> <email> <firstname> <lastname> <age> <role>

Examples:
| username | password | email | firstname | lastname | age | role |
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "25" | "customer" | # TEST-28 #check role names
| "MikeDingeldein" | "wordpass" | "mike@google.com" | "Mike" | "Dingeldein" | "44" | "admin" | # TEST-28 #check role names



# TEST-29 #strech goal
Scenario Outline: User changing username successfully (positive test) #strech goal
Given I am logged in with <username> and <password> at the profile update page
When I type in the new username of <updatedUsername>
And I click the update button #is this one button
Then I should see the user profile updated to <updatedUsername>

Examples:
| username | password | updatedUsername |
| "JohnDoeFake" | "password" | "UpdateUsername" | # TEST-29




# TEST-30 This test needs to run after test 29 # Stretch goal
Scenario Outline: User attempting to change username to already taken username (negative test) #strech goal
Given I am logged in with <username> and <password> at the profile update page
When I type in the new username of <updatedUsername>
And I click the update button #is this one button
Then I should see an error message of "User name is already taken"

Examples:
| username | password | updatedUsername |
| "MikeDingeldein" | "wordpass" | "UpdateUsername" | # TEST-30



# TEST-31 #This does not seem like enough #strech goal
Scenario Outline: User changing password successfully (positive test) #strech goal
Given I am logged in with <username> and <password> at the profile update page
When I type in the new password of <updatedPassword>
And I click the update button #is this one button
Then I should see the user profile updated to <updatedPassword>

Examples:
| username | password | updatedPassword |
| "JohnDoeFake" | "password" | "updatedPassword" | # TEST-31

# TEST-32 #strech goal
Scenario Outline: User changes email successfully (positive test) #strech goal
Given I am logged in with <username> and <password> at the profile update page
When I click the update email button
And I type in the new email of <updatedEmail>
And I click the update button 
Then I should see the user profile email updated to <updatedEmail>

Examples:
| username | password | updatedEmail |
| "JohnDoeFake" | "password" | "updatedEmail@email.com" | # TEST-32

# TEST-33
Scenario Outline: User attempting to change email but email is already taken (negative test) #strech goal
Given I am logged in with <username> and <password> at the profile update page
When I click the update email button
And I type in the new email of <updatedEmail>
And I click the update button #is this one button
Then I should see an error message of "Email already exist." # Check this error message

Examples:
| username | password | updatedEmail |
| "MikeDingeldein" | "wordpass" | "updatedEmail@email.com" | # TEST-33

# TEST-34
Scenario Outline: User attempting to change email but email is invalid format (negative test) #strech goal
Given I am logged in with <username> and <password> at the profile update page
When I click the update email button
And I type in the new email of <updatedEmail>
And I click the update button #is this one button
Then I should see an error message of "Invalid email format" # Check this error message

Examples:
| username | password | updatedEmail |
| "MikeDingeldein" | "wordpass" | "updatedEmail" | # TEST-34

# TEST-35
Scenario Outline: Changing firstname successfully (positive test)
Given I am logged in with <username> and <password> at the profile update page
When I click the update name button
And I type in the new first name of <updatedFirstName>
And I click the update button #is this one button
Then I should see the user profile first name updated to <updatedFirstName>

Examples:
| username | password | updatedFirstName |
| "MikeDingeldein" | "wordpass" | "updatedFirstName" | # TEST-35

