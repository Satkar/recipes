# Demo for Recipes using Contentful API

## Implementation requirements:
 - Create a sample web application that uses the Contentful API to fetch data
 - You can choose to write the application in Ruby and any of its frameworks
 - There should be 2 views: 1) a list view of all the recipes & 2) A detail view of a recipe
 - When clicking on a recipe on the list view, you should then show the detailed view
 
## Data to render
### List view
- Display a preview of all recipes, including:
  - Title
  - Image

### Details View
- Display all the data for a recipe:
  - Title
  - Image
  - List of Tags
  - Description
  - Chef Name 

### This project is built using below tech stack
- Ruby 2.6.3
- Rails 5.2
- Front End - HTML, CSS, JQuery

### Libraries
- Bootstrap
- Contentful ruby gem

### How to setup and run the project locally
* Clone the project
  ```git clone git@github.com:Satkar/recipes.git```
* Navigate to the project directory
* Run
  ```bin/setup```
* Copy the master key into `config` folder of project which I have shared it through the email
* Run
  ```bin/rails s -p 3001```
* visit [Recipes](http://localhost:3001)