# Teladoc Rails Interview Project
A sample Rails interview project

Given the following structure (I've already added the models and controller for you):

    Table: Groups [id, name]
    Table: Users [id, name, group_id]
    Table: Emails [id, address, user_id]
    Controller: ReportsController

1. Write out the models we'd want in Rails, as well as the ActiveRecord relationships and whatever other model setup/code we'd want to write.
2. Write a controller and controller action that would get a list of all of the email addresses for a particular group and then return them in json format.
3. Write the route with the appropriate action verb for the above.
