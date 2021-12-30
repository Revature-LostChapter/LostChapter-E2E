Feature: Registering

# TEST-8
Scenario Outline: Regisering with valid information (positive test)
Given I am at the signup page
When I type in a signup username of <username>
And I type in the signup password  <password>
And I type in an signup email of <email>
And I type in a signup first name of <firstname>
And I type in a signup last name of <lastname>
And I type in a signup age of <age>
And I select a signup role of <role>
And I click the signup button
Then I should be see a success message saying you have successfully signed up

Examples:
| username | password | email | firstname | lastname | age | role |
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "25" | "customer" | # TEST-8 
| "MikeDingeldein" | "wordpass" | "mike@google.com" | "Mike" | "Dingeldein" | "44" | "admin" | # TEST-8 


# TEST-9 through 25
Scenario Outline: Regisering with invalid or missing information (negative test)
Given I am at the signup page
When I type in a signup username of <username>
And I type in the signup password  <password>
And I type in an signup email of <email>
And I type in a signup first name of <firstname>
And I type in a signup last name of <lastname>
And I type in a signup age of <age>
And I select a signup role of <role>
And I click the signup button
Then I should see a signup error message of <error>

Examples:
| username | password | email | firstname | lastname | age | role | error |
| "" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-9 
| "JohnDoeFake" | "" | "johndoe@johndoe.com" | "John" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-10 
| "JohnDoeFake" | "password" | "" | "John" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-11 
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-12 
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | "" | "25" | "customer" | "Do not leave any information blank" |# TEST-13 
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "" | "customer" | "Do not leave any information blank" |# TEST-14 
| "JohnDoeFake" | "password" | "johndoe1@johndoe.com" | "John" | "Doe" | "25" | "" | "Do not leave any information blank" |# TEST-15 
| "JohnDoeFake" | "password" | "test16@johndoe.com" | "John" | "Doe" | "25" | "customer" | "Username already exists" |# TEST-16 
| "JohnDoeFake17" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "25" | "customer" | "Email already exists." |# TEST-17 
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "-1" | "customer" | "Age cannot be less than 5 or greater than 125" |# TEST-18 
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "126" | "customer" | "Age cannot be less than 5 or greater than 125" |# TEST-19 
| "JohnDoeFake" | "password" | "InvalidEmailFormat" | "John" | "Doe" | "25" | "customer" | "Invalid email" |# TEST-20 
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "W*ELd?tz7-c-KAPP}$FGVAy$@TjxP4]zT*w?&BkR/.NJb6Nz{*+$4%M?dTaCxPtvy{j;HgG;;SWmJheH:N*Z69HMXD&}HY{tdui!pF73U:H@nU9VNpL-HWRRNe[ZKc4A4mAFNnPjEHv{:65T}{V9Xw-7gDkM=6P-?}!z@LpxAi=dp4XLrZKa=X@MCeJ*3&P)S}F+G9dBzy$+Y((n+7VyT9z{Uh[xe$uFr=4ywrUA#K}_YnCB.6:!HhVF/P+CVZ5Q" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-21 #not implemented 12/30
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | "W*ELd?tz7-c-KAPP}$FGVAy$@TjxP4]zT*w?&BkR/.NJb6Nz{*+$4%M?dTaCxPtvy{j;HgG;;SWmJheH:N*Z69HMXD&}HY{tdui!pF73U:H@nU9VNpL-HWRRNe[ZKc4A4mAFNnPjEHv{:65T}{V9Xw-7gDkM=6P-?}!z@LpxAi=dp4XLrZKa=X@MCeJ*3&P)S}F+G9dBzy$+Y((n+7VyT9z{Uh[xe$uFr=4ywrUA#K}_YnCB.6:!HhVF/P+CVZ5Q" | "25" | "customer" | "Do not leave any information blank" |# TEST-22 #not implemented 12/30
| "JohnDoeFake" | "password" | "W*ELd?tz7-c-KAPP}$FGVAy$@TjxP4]zT*w?&BkR/.NJb6Nz{*+$4%M?dTaCxPtvy{j;HgG;;SWmJheH:N*Z69HMXD&}HY{tdui!pF73U:H@nU9VNpL-HWRRNe[ZKc4A4mAFNnPjEHv{:65T}{V9Xw-7gDkM=6P-?}!z@LpxAi=dp4XLrZKa=X@MCeJ*3&P)S}F+G9dBzy$+Y((n+7VyT9z{Uh[xe$uFr=4ywrUA#K}_YnCB.6:!HhVF/P+CVZ5Q@johndoe.com" | "John" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-23 #not implemented 12/30
| "W*ELd?tz7-c-KAPP}$FGVAy$@TjxP4]zT*w?&BkR/.NJb6Nz{*+$4%M?dTaCxPtvy{j;HgG;;SWmJheH:N*Z69HMXD&}HY{tdui!pF73U:H@nU9VNpL-HWRRNe[ZKc4A4mAFNnPjEHv{:65T}{V9Xw-7gDkM=6P-?}!z@LpxAi=dp4XLrZKa=X@MCeJ*3&P)S}F+G9dBzy$+Y((n+7VyT9z{Uh[xe$uFr=4ywrUA#K}_YnCB.6:!HhVF/P+CVZ5Q" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "25" | "customer" | "Do not leave any information blank" |# TEST-24 #not implemented 12/30
| "JohnDoeFake" | "password" | "johndoe@johndoe.com" | "John" | "Doe" | "abc" | "customer" | "Age cannot be less than 5 or greater than 125" |# TEST-25 #not implemented 12/30
