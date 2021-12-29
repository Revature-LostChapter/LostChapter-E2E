Feature: Registering

# TEST-8
Scenario Outline: Regisering with valid information (positive test)
Given I am at the signup page
When I type in a username of <username>
And I type in the password  <password>
And I type in an email of <email>
And I type in a first name of <firstname>
And I type in a last name of <lastname>
And I type in an age of <age>
And I select a role of <role>
And I click the signup button
Then I should be see profile for <username>

Examples:
| username | password | email | firstname | lastname | age | role |
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "25" | "customer" | # TEST-8 #check role names
| "MikeDingeldein" | "wordpass" | "mike@google.com" | "Mike" | "Dingeldein" | "44" | "admin" | # TEST-8 #check role names


# TEST-9 through 25
Scenario Outline: Regisering with invalid or missing information (negative test)
Given I am at the signup page
When I type in a username of <username>
And I type in the password  <password>
And I type in an email of <email>
And I type in a first name of <firstname>
And I type in a last name of <lastname>
And I type in an age of <age>
And I select a role of <role>
And I click the signup button
Then I should see an error message <error>

Examples:
| username | password | email | firstname | lastname | age | role | error |
| null | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-9 #check role names
| "JohnDoeFake" | null | "johndoe@johndoe.com" | "John" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-10 #check role names
| "JohnDoeFake" | "password" | null | "John" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-11 #check role names
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | null | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-12 #check role names
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | null | "25" | "customer" | "Do not leave any information blank" |# TEST-13 #check role names
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | null | "customer" | "Do not leave any information blank" |# TEST-14 #check role names
| "JohnDoeFake" | "password" | "johndoe1@johndoe.com" | "John" | "Doe" | "25" | null | "Do not leave any information blank" |# TEST-15 #check role names
| "JohnDoeFake" | "password" | "test16@johndoe.com" | "John" | "Doe" | "25" | "customer" | "Username already exists" |# TEST-16 #check role names
| "JohnDoeFake17" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-17 #check role names
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "-1" | "customer" | "Age cannot be less than 5 or greater than 125" |# TEST-18 #check role names
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "126" | "customer" | "Age cannot be less than 5 or greater than 125" |# TEST-19 #check role names
| "JohnDoeFake" | "password" | "InvalidEmailFormat" | "John" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-20 #check role names
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "W*ELd?tz7-c-KAPP}$FGVAy$@TjxP4]zT*w?&BkR/.NJb6Nz{*+$4%M?dTaCxPtvy{j;HgG;;SWmJheH:N*Z69HMXD&}HY{tdui!pF73U:H@nU9VNpL-HWRRNe[ZKc4A4mAFNnPjEHv{:65T}{V9Xw-7gDkM=6P-?}!z@LpxAi=dp4XLrZKa=X@MCeJ*3&P)S}F+G9dBzy$+Y((n+7VyT9z{Uh[xe$uFr=4ywrUA#K}_YnCB.6:!HhVF/P+CVZ5Q" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-21 #check role names
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | "W*ELd?tz7-c-KAPP}$FGVAy$@TjxP4]zT*w?&BkR/.NJb6Nz{*+$4%M?dTaCxPtvy{j;HgG;;SWmJheH:N*Z69HMXD&}HY{tdui!pF73U:H@nU9VNpL-HWRRNe[ZKc4A4mAFNnPjEHv{:65T}{V9Xw-7gDkM=6P-?}!z@LpxAi=dp4XLrZKa=X@MCeJ*3&P)S}F+G9dBzy$+Y((n+7VyT9z{Uh[xe$uFr=4ywrUA#K}_YnCB.6:!HhVF/P+CVZ5Q" | "25" | "customer" | "Do not leave any information blank" |# TEST-22 #check role names
| "JohnDoeFake" | "password" | "W*ELd?tz7-c-KAPP}$FGVAy$@TjxP4]zT*w?&BkR/.NJb6Nz{*+$4%M?dTaCxPtvy{j;HgG;;SWmJheH:N*Z69HMXD&}HY{tdui!pF73U:H@nU9VNpL-HWRRNe[ZKc4A4mAFNnPjEHv{:65T}{V9Xw-7gDkM=6P-?}!z@LpxAi=dp4XLrZKa=X@MCeJ*3&P)S}F+G9dBzy$+Y((n+7VyT9z{Uh[xe$uFr=4ywrUA#K}_YnCB.6:!HhVF/P+CVZ5Q@johndoe.com" | "John" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-23 #check role names
| "W*ELd?tz7-c-KAPP}$FGVAy$@TjxP4]zT*w?&BkR/.NJb6Nz{*+$4%M?dTaCxPtvy{j;HgG;;SWmJheH:N*Z69HMXD&}HY{tdui!pF73U:H@nU9VNpL-HWRRNe[ZKc4A4mAFNnPjEHv{:65T}{V9Xw-7gDkM=6P-?}!z@LpxAi=dp4XLrZKa=X@MCeJ*3&P)S}F+G9dBzy$+Y((n+7VyT9z{Uh[xe$uFr=4ywrUA#K}_YnCB.6:!HhVF/P+CVZ5Q" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-24 #check role names
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "abc" | "customer" | "Do not leave any information blank" |# TEST-25 #check role names
