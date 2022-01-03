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
And I type in a birthday of <birthday>
And I type in an address of <address>
And I select a signup role of <role>
And I click the signup button
Then I should be see a success message saying you have successfully signed up

Examples:
| username         | password   | email                 | firstname | lastname     | age  | role       |  birthday    | address              |
| "unique"    | "password" | "unique" | "John"    | "Doe"        | "25" | "customer" | "10/03/1996" | "1024 Downtown Road" |  # TEST-8 
| "unique" | "wordpass" | "unique"     | "Mike"    | "Dingeldein" | "44" | "admin"    | "01/05/1985" | "9610 Uptown Road"   | # TEST-8 



# TEST-9 through 25
Scenario Outline: Regisering with invalid or missing information (negative test)
Given I am at the signup page
When I type in a signup username of <username>
And I type in the signup password  <password>
And I type in an signup email of <email>
And I type in a signup first name of <firstname>
And I type in a signup last name of <lastname>
And I type in a signup age of <age>
And I type in a birthday of <birthday>
And I type in an address of <address>
And I select a signup role of <role>
And I click the signup button
Then I should see a signup error message of <error>

Examples:
| username        | password   | email                 | firstname | lastname | age  | role       | birthday | address |error                                |	
| ""              | "password" | "unique" | "John"    | "Doe"    | "25" | "customer" | "10/03/1996" | "1095 downtown road" | "Do not leave any information blank" |# TEST-9 
| "unique"   | ""         | "unique" | "John"    | "Doe"    | "25" | "customer" | "10/03/1996" | "1095 downtown road" |"Do not leave any information blank" |# TEST-10 
| "unique"   | "password" | ""                    | "John"    | "Doe"    | "25" | "customer" | "10/03/1996" | "1095 downtown road" |"Do not leave any information blank" |# TEST-11 
| "unique"   | "password" | "unique" | ""        | "Doe"    | "25" | "customer" | "10/03/1996" | "1095 downtown road" |"Do not leave any information blank" |# TEST-12 
| "unique"   | "password" | "unique" | "John"    | ""       | "25" | "customer" | "10/03/1996" | "1095 downtown road" |"Do not leave any information blank" |# TEST-13 
| "unique"   | "password" | "unique" | "John"    | "Doe"    | ""   | "customer" | "10/03/1996" | "1095 downtown road" |"Do not leave any information blank" |# TEST-14 
| "unique"   | "password" | "unique" | "John"   | "Doe"    | "25" | ""         | "10/03/1996" | "1095 downtown road" |"Do not leave any information blank" |# TEST-15 
| "unique"   | "password" | "unique"  | "John"    | "Doe"    | "25" | "customer" | "10/03/1996" | "1095 downtown road" |"Username already exists" |# TEST-16 
| "unique" | "password" | "unique" | "John"    | "Doe"    | "25" | "customer" | "10/03/1996" | "1095 downtown road" |"Email already exists." |# TEST-17 
| "unique"   | "password" | "unique" | "John"    | "Doe"    | "-1" | "customer" | "10/03/1996" | "1095 downtown road" |"Age cannot be less than 5 or greater than 125" |# TEST-18 
| "unique"   | "password" | "unique" | "John"    | "Doe"    | "126" | "customer" | "10/03/1996" | "1095 downtown road" |"Age cannot be less than 5 or greater than 125" |# TEST-19 
| "unique"   | "password" | "unique"  | "John"    | "Doe"    | "25" | "customer" | "10/03/1996" | "1095 downtown road" |"Invalid email" |# TEST-20 
| "unique"   | "password" | "unique" | "W*ELd?tz7-c-KAPP}$FGVAy$@TjxP4]zT*w?&BkR/.NJb6Nz{*+$4%M?dTaCxPtvy{j;HgG;;SWmJheH:N*Z69HMXD&}HY{tdui!pF73U:H@nU9VNpL-HWRRNe[ZKc4A4mAFNnPjEHv{:65T}{V9Xw-7gDkM=6P-?}!z@LpxAi=dp4XLrZKa=X@MCeJ*3&P)S}F+G9dBzy$+Y((n+7VyT9z{Uh[xe$uFr=4ywrUA#K}_YnCB.6:!HhVF/P+CVZ5Q" | "Doe" | "25" | "customer" | "10/03/1996" | "1095 downtown road" |"Do not leave any information blank" |# TEST-21 #not implemented 12/30
| "unique"   | "password" | "unique" | "John"    | "W*ELd?tz7-c-KAPP}$FGVAy$@TjxP4]zT*w?&BkR/.NJb6Nz{*+$4%M?dTaCxPtvy{j;HgG;;SWmJheH:N*Z69HMXD&}HY{tdui!pF73U:H@nU9VNpL-HWRRNe[ZKc4A4mAFNnPjEHv{:65T}{V9Xw-7gDkM=6P-?}!z@LpxAi=dp4XLrZKa=X@MCeJ*3&P)S}F+G9dBzy$+Y((n+7VyT9z{Uh[xe$uFr=4ywrUA#K}_YnCB.6:!HhVF/P+CVZ5Q" | "25" | "customer" | "10/03/1996" | "1095 downtown road" |"Do not leave any information blank" |# TEST-22 #not implemented 12/30
| "unique"  | "password" | "W*ELd?tz7-c-KAPP}$FGVAy$@TjxP4]zT*w?&BkR/.NJb6Nz{*+$4%M?dTaCxPtvy{j;HgG;;SWmJheH:N*Z69HMXD&}HY{tdui!pF73U:H@nU9VNpL-HWRRNe[ZKc4A4mAFNnPjEHv{:65T}{V9Xw-7gDkM=6P-?}!z@LpxAi=dp4XLrZKa=X@MCeJ*3&P)S}F+G9dBzy$+Y((n+7VyT9z{Uh[xe$uFr=4ywrUA#K}_YnCB.6:!HhVF/P+CVZ5Q@johndoe.com" | "John" | "Doe" | "25" | "customer" | "10/03/1996" | "1095 downtown road" |"Do not leave any information blank" |# TEST-23 #not implemented 12/30
| "W*ELd?tz7-c-KAPP}$FGVAy$@TjxP4]zT*w?&BkR/.NJb6Nz{*+$4%M?dTaCxPtvy{j;HgG;;SWmJheH:N*Z69HMXD&}HY{tdui!pF73U:H@nU9VNpL-HWRRNe[ZKc4A4mAFNnPjEHv{:65T}{V9Xw-7gDkM=6P-?}!z@LpxAi=dp4XLrZKa=X@MCeJ*3&P)S}F+G9dBzy$+Y((n+7VyT9z{Uh[xe$uFr=4ywrUA#K}_YnCB.6:!HhVF/P+CVZ5Q" | "password" | "unique" | "John" | "Doe" | "25" | "customer" | "10/03/1996" | "1095 downtown road" |"Do not leave any information blank" |# TEST-24 #not implemented 12/30
| "unique"   | "password" | "unique" | "John" | "Doe" | "abc" | "customer" | "10/03/1996" |  "1095 downtown road" |"Age cannot be less than 5 or greater than 125" |# TEST-25 #not implemented 12/30
| "unique" | "password" | "unique" | "John" | "Doe" | "25" | "customer" | "" | "1095 downtown Road" | "Birthday cannot be empty"
| "unique" | "password" | "unique" | "John" | "Doe" | "25" | "customer" | "10/03/1996" | "" | "Address cannot be empty"
| "unique" | "password" | "unique" | "John" | "Doe" | "25" | "customer" | "101231/51245/126932123" | "1095 downtown road" | "birthdate is invalid format"

