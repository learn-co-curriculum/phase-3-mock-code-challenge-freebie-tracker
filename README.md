# Mock Code Challenge - Swag Tracker

For this assignment, we'll be working with a Swag domain.

As developers, when you attend hackathons, you'll realize they hand out a lot of freebies! Let's make an app for developers that keeps track of all the swag they obtain.

We have 3 models: `Company`, `Dev`, and `Swag`

A `Company` has many `Swag` to give out,
A `Dev` has many `Swag` they own, and
A piece of `Swag` is made by (belongs to) a `Company` and owned by (belongs to) a `Dev`

`Company` - `Dev` is a many-to-many relationship.



We have three models: `Company`, `Dev`, and `Swag`

For our purposes, a `Company` has many `Swag`s, a `Dev` has many `Swag`s, and a `Swag` belongs to a `Dev` and to a `Company`.

`Company` - `Dev` is a many to many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you start coding_. Remember to identify a single source of truth for your data.

## Topics

- Classes and Instances
- Class and Instance Methods
- Variable Scope
- Object Relationships
- Arrays and Array Methods

## Instructions

To get started, run `bundle install` while inside of this directory.

Build out all of the methods listed in the deliverables. The methods are listed in a suggested order, but you can feel free to tackle the ones you think are easiest. Be careful: some of the later methods rely on earlier ones.

**Remember!** This code challenge does not have tests. You cannot run `rspec` and you cannot run `learn`. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

We've provided you with a tool that you can use to test your code. To use it, run `ruby tools/console.rb` from the command line. This will start a `pry` session with your classes defined. You can test out the methods that you write here. You can add code to the `tools/console.rb` file to define variables and create sample instances of your objects.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code in the console as you write.

Similarly, messy code that works is better than clean code that doesn't. First, prioritize getting things working. Then, if there is time at the end, refactor your code to adhere to best practices. Examples of best practices might be to use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`, or, when you encounter duplicated logic, to extract it into a shared helper method.

**Before you submit!** Save and run your code to verify that it works as you expect. If you have any methods that are not working yet, feel free to leave comments describing your progress.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Some of the methods listed are provided to you in the starter code. You should check that they work correctly, and that you understand them.

### Initializers, Readers, and Writers

#### Swag

- `Swag#initialize(item_name, company, dev)`
  - should initialize with a name (string), company (`Company` instance) and dev (`Dev` instance)
- `Swag.item_name`
  - should return the item_name

#### Company

- `Company#initialize(name, founding_year)`
  - should initialize with a name (string) and founding_year (integer)
- `Company.name`
  - should return the name of the company
- `Swag.founding_year`
  - should return the founding_year


#### Dev

- `Dev#initialize(name)`
  - should initialize with a name (string)

### Object Relationship Methods

#### Swag

- `Swag#dev`
  - should return the `Dev` instance for this swag
- `Swag#company`
  - should return the `Company` instance for this swag

#### Company

- `Company#swags`
  - returns a collection of all the swags for the company
  - Having duplicate instances is fine
- `Company#devs`
  - returns a collection of all the devs who received swag from the company
  - Having duplicate instances is fine

#### Dev

- `Dev#swags`
  - should return a collection of all the swags that the dev owns
- `Dev#companies`
  - should return a collection of all the companies that the dev received swag from
  - Having duplicate instances is fine

### Aggregate and Association Methods

#### Swag

- `Swag#sentence`
  - should return a string formatted as follows: `{insert dev's name} owns a {insert swag's item_name}`

#### Company

- `Company#give_swag(dev, item_name)`
  - takes a `dev` (an instance of the `Dev` class) and an `item_name` (string) as arguments, and creates a new `Swag` instance in the database associated with this company and the dev
- `Company#where_is_our_swag`
  - should return an Array of strings with all the swags handed out from this company formatted as follows: `[{insert dev's name} owns a {insert swag's item_name}, {insert dev's name} owns a {insert swag's item_name}, ...]`
- `Company#take_swag_back_from(dev)`
  - takes a `Dev` instance and removes their swag from this company
  - you will have to delete a row from the `swags` table to get this to work!
- `Company.oldest_company`
  - returns the `Company` instance with the earliest founding_year
- `Company.most_given_away`
  - should return an instance of `Company` which has the most swag given out to devs

#### Dev

- `Dev#throw_away(swag)`
  - accepts a `Swag` instance and removes it from the database *only if the dev owns the given swag instance*
- `Dev#no_longer_a_fan_of(company)`
  - accepts a `Company` instance as an argument, finds all of the swag associated with this dev and the company, and removes them all from the database
- `Dev.swag_hoarder`
  - returns *one* dev instance for the dev who has the most amount of swag

## Rubric

### Active Record Associations

1. No associations, no foreign key on the table.
2. Associations attempted in the model but are incorrect; foreign key is on a table but in the wrong spot.
3. Relationships properly created. Associations lead to the correct behavior but may have used the wrong macro or manually written out the methods the macro builds for us.
4. Relationships properly created, save minor mistakes in advanced deliverables. May implement advanced query methods with iterators instead of using built-in methods.
5. Relationships properly created. Advanced query methods use appropriate built-in methods.
