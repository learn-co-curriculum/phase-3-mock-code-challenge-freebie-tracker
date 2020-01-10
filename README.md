# Mock Code Challenge - Freebie Tracker

![Table of Freebies](image.jpg)

For this assignment, we'll be working with a freebie domain.

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
- `Company#name`
  - should return the name of the company
- `Company#founding_year`
  - should return the founding_year
- `Company.all`
  - Returns an array of all Company instances

#### Dev

- `Dev#initialize(name)`
  - should initialize with a name (string)
- `Dev#name`
  - should return the name of the dev
- `Dev.all`
  - Returns an array of all Dev instances

#### Freebie

- `Freebie#initialize(item_name, company, dev)`
  - should initialize with an item name (string), company (`Company` instance) and dev (`Dev` instance)
- `Freebie#item_name`
  - should return the name of the item, ie. `"sticker"` or `"water bottle"`
- `Freebie.all`
  - Returns an array of all Freebie instances

### Object Relationship Methods

#### Company

- `Company#freebies`
  - returns an array of all the freebies given out by the company
- `Company#devs`
  - returns a **unique** array of all the devs who received freebie(s) from the company

#### Dev

- `Dev#freebies`
  - returns an array of all the freebies that the dev owns
- `Dev#companies`
  - returns a **unique** array of all the companies that the dev received freebie(s) from

#### Freebie

- `Freebie#dev`
  - should return the `Dev` instance for this freebie
- `Freebie#company`
  - should return the `Company` instance for this freebie

### Aggregate and Association Methods

#### Company

- `Company#give_freebie(dev, item_name)`
  - takes a `dev` (an instance of the `Dev` class) and an `item_name` (string) as arguments, and creates a new `Freebie` instance associated with this company and the given dev
- `Company.oldest_company`
  - returns the `Company` instance with the earliest founding year
- `Company.most_distributed`
  - should return an instance of `Company` which has the most freebies given out to devs

#### Dev

- `Dev#received_one?(item_name)`
  - accepts an item_name (string) and returns true if any of the freebies associated with the dev has that item_name, otherwise returns false
- `Dev#give_away(dev, freebie)`
  - accepts a `Dev` instance and a `Freebie` instance, changes the freebie's dev to be the given dev
- `Dev.freebie_hoarder`
  - returns *one* dev instance for the dev who owns the most amount of freebies

#### Freebie

- `Freebie#print_details`
  - should return a string formatted as follows: `{insert dev's name} owns a {insert freebie's item_name} from {insert company's name}`

## Rubric

### Build classes using OO Ruby Syntax

1. Class code has a syntax or runtime error. Code does not run at all, or exits with an error, or most Object-oriented deliverables are not implemented.
2. No syntax errors. Some deliverables function correctly. Mixes up syntax for class and instance methods, refers to variables in the wrong scope, or uses `self` incorrectly, leading to logical errors. Method and variable names do not correspond to their respective behavior or data types. Methods might be duplicated, or code includes unused methods without a clear purpose.
3. Correct class syntax for the deliverables submitted. May be incomplete or missing deliverables. Most code generally expresses intent: method and variable names match their behaviors and data types. Methods are not duplicated. Code does not have unused or methods without a clear purpose.
4. Correct class syntax for all of the submitted code. Code express intent: method and variable names indicate their behavior and data types. Some deliverables might not be complete. No methods are duplicated.
5. Correct class syntax for all deliverables, all deliverables complete. Code expresses intent: method and variable names indicate their behavior and data types, with the correct pluralization. No methods are duplicated. All methods have a clear purpose. Shared functionality is factored out into helper methods. Appropriate use of attr\_\* macros.

### Model relationships using Ruby

1. Submitted code does not relate models to each other through methods or data.
2. Models relate to each other, but incompletely. Relationship methods are missing or have logic errors, store data on the wrong model, or are missing a single source of truth.
3. Models relate to each other as specified in the instructions. Data is stored on the correct models, relationship methods are defined on the right models, and the logic correctly implements the relationships. Aggregate methods using the relationships may be incomplete or have errors.
4. Models relate to each other as specified in the instructions. Aggregate methods work, but might not use helper methods effectively.
5. Models relate to each other as specified in the instructions. Aggregate methods use helper methods effectively.

### Solve problems with collections of data

1. Does not attempt to solve collections problems, or has syntax errors in collection code.
2. Collections methods have runtime or logic errors. Collections methods may use the wrong iterators, have incorrect logic, or many of the collections methods are unimplemented.
3. Some collections methods work correctly, though several might be unimplemented. Code may not use the appropriate built in method for each problem, or duplicate logic instead of using helper methods.
4. All collections methods are implemented and function correctly. Most use appropriate higher-level built-in methods. Methods may duplicate logic instead of using helper methods.
5. All collections methods implemented and function correctly, using appropriate higher-level built-in methods. Shared logic is factored out to helper methods.
