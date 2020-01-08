# Mock Code Challenge - Swag Tracker
As developers, when you attend hackathons, you'll realize they hand out a lot of freebies! Let's make an app for developers that keeps track of all the swag they obtain.

We have 3 models: `Company`, `Dev`, and `Swag`

A `Company` has many `Swag` to give out,
A `Dev` has many `Swag` they own, and
A piece of `Swag` is made by (belongs to) a `Company` and owned by (belongs to) a `Dev`

`Company` - `Dev` is a many-to-many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you start coding_. Remember to identify a single source of truth for your data.

## Instructions

To get started, run `bundle install` while inside of this directory.

Build out all of the methods listed in the deliverables. The methods are listed in a suggested order.

**Testing**: We've provided you with a tool that you can use to test your code. To use it, run `rake console` from the command line. This will start a `pry` session with your classes defined. You can test out the methods that you write here. You are also encouraged to use the `seeds.rb` file to create sample data to test your models and associations.

Writing error-free code is more important than completing all of the deliverables listed. You should be testing your code in the console as you write.

Similarly, messy code that works is better than clean code that doesn't. First, prioritize getting things working. Then, if there is time at the end, refactor your code to adhere to best practices.

**Before you submit!** Save and run your code to verify that it works as you expect. If you have any methods that are not working yet, feel free to leave comments describing your progress.

## What You Already Have
The starter code has migrations and models for the initial `Company` and `Dev` models, and seed data for some `Company` instances and `Dev` instances.

You will need to create the migration for the `Swag` table using the attributes specified in the deliverables below.

## Deliverables
Deliverables use the notation `#` for instance methods, and `.` for class methods.

Remember: Active Record give your classes access to a lot of methods already! Keep in mind what methods Active Record gives you access to on each of your classes when you're approaching the deliverables below.

### Migrations

Before working on the rest of the deliverables, you will need to create a migration for the `roles` table.

- A `Role` belongs to a `Movie`, and a `Role` also belongs to an `Actor`. In your migration, create any columns your `roles` table will need to establish these relationships.
- The `roles` table should also have:
  - A `salary` column that stores an integer.
  - A `character_name` column that stores a string.

After creating your migration, use the `seeds.rb` file to create instances of your `Role` class so you can test your code.

**Once you've set up your `Role` class**, work on building out the following deliverables. Use Active Record association macros and Active Record query methods where appropriate.

### Object Relationship Methods

#### Role

- `Role#actor`
  - should return the `Actor` instance for this role
- `Role#movie`
  - should return the `Movie` instance for this role

#### Movie

- `Movie#roles`
  - returns a collection of all the roles for the movie
- `Movie#actors`
  - returns a collection of all the actors who performed in the movie

#### Actor

- `Actor#roles`
  - should return a collection of all the roles that the actor has played
- `Actor#movies`
  - should return a collection of all the movies that the actor has performed in

### Aggregate and Association Methods

#### Role

- `Role#credit`
  - should return a string formatted as follows: `{insert character name}: Played by {insert actor name}`

#### Movie

- `Movie#cast_role(actor, character_name, salary)`
  - takes a `actor` (an instance of the `Actor` class), a `character_name` (string), and a `salary` (integer) as arguments, and creates a new `role` in the database associated with this movie and the actor
- `Movie#all_credits`
  - should return an Array of strings with all the roles for this movie formatted as follows: ["{insert character name}: Played by {insert actor name}", "{insert character name}: Played by {insert actor name}", ...]
- `Movie#fire_actor(actor)`
  - takes an `actor` (an instance of the `Actor` class) and removes their role from this movie
  - you will have to delete a row from the `roles` table to get this to work!

#### Actor

- `Actor#total_salary`
  - returns the total salary for an actor based on the salary for each of their roles
- `Actor#blockbusters`
  - returns a collection of all the `Movie` instances the actor has performed in that have a `box_office_earnings` of over $50,000,000
- `Actor.most_successful`
  - returns *one* actor instance for the actor who has the highest total salary for all their roles

## Rubric

### Active Record Associations

1. No associations, no foreign key on the table.
2. Associations attempted in the model but are incorrect; foreign key is on a table but in the wrong spot.
3. Relationships properly created. Associations lead to the correct behavior but may have used the wrong macro or manually written out the methods the macro builds for us.
4. Relationships properly created, save minor mistakes in advanced deliverables. May implement advanced query methods with iterators instead of using built-in methods.
5. Relationships properly created. Advanced query methods use appropriate built-in methods.
# swag-tracker-code-challenge
