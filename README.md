# Mock Code Challenge - Freebie Tracker

For this assignment, we'll be working with a Freebie domain.

As developers, when you attend hackathons, you'll realize they hand out a lot of free items (informally called *freebies*)! Let's make an app for developers that keeps track of all the freebies they obtain.

We have three models: `Company`, `Dev`, and `Freebie`

For our purposes, a `Company` has many `Freebie`s, a `Dev` has many `Freebie`s, and a `Freebie` belongs to a `Dev` and to a `Company`.

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

#### Company

- `Company#initialize(name, founding_year)`
  - should initialize with a name (string) and founding_year (integer)
- `Company.name`
  - should return the name of the company
- `Company.founding_year`
  - should return the founding_year
- `Company.all`
  - Returns an array of all Company instances

#### Dev

- `Dev#initialize(name)`
  - should initialize with a name (string)
- `Dev.name`
  - should return the name of the dev
- `Dev.all`
  - Returns an array of all Dev instances

#### Freebie

- `Freebie#initialize(item_name, company, dev)`
  - should initialize with a name (string), company (`Company` instance) and dev (`Dev` instance)
- `Freebie.item_name`
  - should return the item_name
- `Freebie.all`
  - Returns an array of all Freebie instances

### Object Relationship Methods

#### Company

- `Company#freebies`
  - returns an array of all the freebies for the company
  - Having duplicate instances is fine
- `Company#devs`
  - returns an array of all the devs who received freebie from the company
  - Having duplicate instances is fine

#### Dev

- `Dev#freebies`
  - should return an array of all the freebies that the dev owns
- `Dev#companies`
  - should return an array of all the companies that the dev received freebie from
  - Having duplicate instances is fine

#### Freebie

- `Freebie#dev`
  - should return the `Dev` instance for this freebie
- `Freebie#company`
  - should return the `Company` instance for this freebie

### Aggregate and Association Methods

#### Company

- `Company#give_freebie(dev, item_name)`
  - takes a `dev` (an instance of the `Dev` class) and an `item_name` (string) as arguments, and creates a new `Freebie` instance in the database associated with this company and the dev
- `Company.oldest_company`
  - returns the `Company` instance with the earliest founding_year
- `Company.most_given_away`
  - should return an instance of `Company` which has the most freebie given out to devs

#### Dev

- `Dev#no_longer_a_fan_of(company)`
  - accepts a `Company` instance as an argument, finds all of the freebie associated with this dev and the company, and deletes them all
- `Dev.freebie_hoarder`
  - returns *one* dev instance for the dev who owns the most amount of freebies

#### Freebie

- `Freebie#sentence`
  - should return a string formatted as follows: `{insert dev's name} owns a {insert freebie's item_name} from {insert company's name}`

## Rubric

### Active Record Associations

1. No associations, no foreign key on the table.
2. Associations attempted in the model but are incorrect; foreign key is on a table but in the wrong spot.
3. Relationships properly created. Associations lead to the correct behavior but may have used the wrong macro or manually written out the methods the macro builds for us.
4. Relationships properly created, save minor mistakes in advanced deliverables. May implement advanced query methods with iterators instead of using built-in methods.
5. Relationships properly created. Advanced query methods use appropriate built-in methods.
