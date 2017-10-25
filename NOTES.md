Goal: Create a web app to CRUD NYC Historical landmarks with their related figures

Plan:

Model
1. ERD the model on paper (done)
2. Build out the database - done
3. Build the models and macro them = done
4. Migrate db done
5. Seed database
6. Tux dbase to get a feel for it - done
7. Run tests and get them working for each model - done
8. Commit changes

Controllers
1. Create controllers for Landmarks and figures - done
2. Review previous code to ensure config.ru works - done
3. Test with basic views to ensure routing works as expected - done
4. Commit

Controller stubs to build:
get '/figures' list all figures
get '/figures/new' view form to create a new figure with a title and landmark.  
post '/figures/new' form submit to create stuff

get '/figures/:figure_id' see a single figure
get '/figures/:figure_id/edit' display form to edit a single figure
POST '/figures/:figure_id/edit' route form submission to edit a single figure

get '/landmarks/new' view form to create a new landmark
post '/landmarks/new' route form subnmission to create a landmark
get '/landmarks/:id' see a single landmark
get '/landmarks/:id/edit' view form to edit a single landmark
post '/landmarks/:id/edit' controller to update landmark based on form submit


Views
10. Build views with forms.  Review last project for forms relating multiple models. Done
11. Commit. Done


Iterate
1. Run tests and update until working
