# Set up instructions for local server
1. Clone the repository

Run this command.
    
    `git clone git@github.com:Yoko-cyer/T2A2_Marketplace-app.git`

2. Update yarn configuration

Run this command.

    `yarn install --check-files`


3. Please make sure Ruby 3.0.0 and Rails 6.1.

4. Setup Postgresql server

Run this command.

    `rails db:setup`

    `rails db:migrate`

    `rails db:seed`

6. Run local server 

Run this command 

    `rails s`

7. Visit https://localhost:3000/ to load the website

--------------------

# Identification of the problems by creating this app 
Recently, the most serious issues in the world now are environmental challenges. These are caused by 7.8 million humans and their activities as supporting industries grow and the population increases. I think we are required to work to maintain a sustainable society and an environment for our next generations. Reducing food wastage is something we can all contribute easily to, so I decided to focus on this problem. Another problem are mental health issues generally, and especially from work stresses in offices, or working/virtually from home during the Covid-19 pandemic. I think sharing some surplus food items or meals, rather than throwing it away into landfill, which will prevent personal isolation and help other people in challenging times. 

## Environment issues
- To reduce Food loss - due to population increase globally 
    - One third of all food produced is lost or wasted. 
    - Around 1.3 billion tonnes of food – costing the global economy close to A$940 billion each year.
    - Reducing greenhouse gas emissions to reduce your carbon footprint, there lessening the impact of global warming and climate change. 
    

- To maintain a Sustainable society  
    - Food rotting in landfill releases methane – 28x stronger than carbon dioxide. 
    - If one quarter of the food currently lost or wasted could be saved, it would be enough to feed 870 million hungry people.
    - 3 in 10 Australians are experiencing food insecurity had not gone hungry before the pandemic. Young people are being hardest hit by the impact of Covid-19.


## Mental health issues 
-  Social isolation has also been linked to serious mental illness, emotional distress, suicides, the development of dementia, premature death, poor health behaviours, smoking, physical inactivity, poor sleep, and biological impacts, including: high blood pressure, and, reduced immune function.

# A link (URL) to my deployed app

<https://share-my-meals.herokuapp.com/>

# A link to my GitHub repository

<https://github.com/Yoko-cyer/T2A2_Marketplace-app>

# Description of my marketplace app

## Purpose

The purpose of building this application is to satisfy the requirements of Term 2 to obtain a Diploma in Information Technology in the Coder Academy. Another purpose is to solve environmental and mental health issues. I have mentioined these problems in detail above. 
 
## Functionality / features
- There is a sign up and a login function.
- Users are able to choose to become either a host or a guest
- As a host, users are able to register their meals including meal names, categories, ingredients, location, price, time, to message guests and provide photos. 
- The list of meals are shown and guests can choose meals from the list.
- The person in admin edit and delete meal items from the list.
- Admin ID:admin.yoko@test, Password:lovelove     


## Sitemap
![sitemap](https://user-images.githubusercontent.com/74385785/130010923-9e0f7c80-99cc-488a-9b65-84630f091e1f.png)

## Screenshots

![screenshot-login](https://user-images.githubusercontent.com/74385785/130011370-9cfe65f7-b616-4cd6-b3f8-caf2d7de4e21.png)
![screenshot-home](https://user-images.githubusercontent.com/74385785/130011335-9456273b-8c34-4661-ba36-dd4f3221c6f4.png)
![screenshot-host-registration](https://user-images.githubusercontent.com/74385785/130011345-855d19af-acd3-4962-b8a9-c2968f1769ee.png)
![screenshot-list-edit](https://user-images.githubusercontent.com/74385785/130011357-5c1cd7c1-6fa2-4815-84a4-b9358b8b0d9b.png)
![screenshot-listing](https://user-images.githubusercontent.com/74385785/130011365-46a56c52-0f63-49d8-a995-58cbad08f0bd.png)

## Target audience
I can define two kinds of users. One is as a host and the another one as a guest.
- As a host - anyone who wants to share their meals:
    - Those with a generous heart to donate foods to people in need
    - Someone who prpares meals greater than needed and gives it away rather than it going into a bin
    - Someone who prepares food for a party but did not use as much as was needed
    - Restaurant owners who want people to taste before launching their menus
    - Someone living alone who wants to have a conversation while eating

- As a guest - anyone who want to take advantage of meals offer
    - Homelessness peesons 
    - Someone in need help of food
    - Someone who may want to try different kinds of cuisines
    - Someone who wants to be lazy after cooking 6 days in a row 


## Tech stack (e.g. html, css, deployment platform, etc)

- THML - for writing text
- CSS/SCSS - for styling 
- Javascript - for movement in HTML file
- Bootstrap 4 - for neat design 
- Ruby - for programming language
- Ruby on Rails - for framework
- Localhost servers - for server
- Postgresql - for database
- Heroku - for deployment
- AWS S3 - for cloud image upload

# User stories 
- As one of the citizens on the earth, I want to contribute to a sustainable society by reducing food wastage. 
- As a generous person, I would like to help people in need by sharing my leftover food items.
- As for homelessness, I want them to eat decent meals for free, or at a cheap price.
- If I lost my job due to Covid-19 pandemic. I need financial and mental support.
- As a restaurant owner, I would like to see how people react to my new menus before launching the menu item.
- I would like to try different cuisines out of curiosity.   


# Wireframes 
![Login](./docs/wireframe-login.png)
![Home](./docs/wireframe-home.png)
![Host registration](./docs/wireframe-host-registration.png)
![Search](./docs/wireframe-search.png)

# An ERD 
## Initial ERD
![initial_ERD](https://user-images.githubusercontent.com/74385785/130011273-68551a77-464d-4e54-861c-bfe051ed2639.png)

## Final ERD
![]()

# Different high-level components (abstractions)

I useed rails applicacion for this application, so MVC model is used. I will describe how they are interect each other. 

User mode

<!-- In a MVC application like Uniq_E, User model is associated with post and service models by using one to many relationship.

When an user create a post and service, the create method in post and service controllers is checking and assign current user with the post which has just been created.

In the views, all the buttons are display by using link_to syntax and path using rails routes. Therefore, relevant contents are to be rendered. -->

# Third party services that my app will use
- Bootstrap 4
- Devise gem
- Simpleform gem
- Heroku 

# Projects models in terms of the relationships (active record associations) they have with each other
meals one to one relatino

# Database relations to be implemented in your application


# Database schema design
![schema-design-1](https://user-images.githubusercontent.com/74385785/130011300-04f5e372-9747-4203-b056-0ef646840008.png)
![schema-design-2](https://user-images.githubusercontent.com/74385785/130011311-b5a32603-4598-4890-9f43-8323d4219e7d.png)

# Task allocation and tracking

I used Trello for my project management. I added some checklists for major tasks for better management. Each card is allocated at an appropriate stage such as To do, Doing and Done.

<https://trello.com/b/X56MrtBz/t2a2-web-application>
