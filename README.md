# Kele API Client

### REST API Client

Bloc's API provides an external facing JSON Web Token authorized gateway to the Bloc application. You can access it via cURL, but an API client can manage the low-level details of making requests and handling responses. Build the Kele API Client to provide easy access to and use of the student endpoints of Bloc's API

### Case Study

## Project Objectives

- Create a basic Ruby Gem 
- Explain authorization with JSON Web Tokens.
- Understand the reasons to call an API using a client.
- Explain how to update resources via an API.

## Build Dependencies

- Ruby 2.4.0
- HTTParty Gem
- JSON Gem

## Setup/Configuration

### Setup

Add this line to your application's Gemfile:

`gem 'kele'`

And then execute:

`'$ bundle install'`

Or install manually :

`$ gem install ./kele-0.0.1.gem`

### Getting Started

Require kele gem in irb:
```
>>require 'kele' 
```
Using your Bloc login email and password to create a new variable. Kele securely posts your credentials to Bloc's API with an authentication token.
```
>> kele_client = Kele.new("student@bloc.io", "password")
```
### Retrieving users information

Using irb, use the method get_me to retrieve your information as JSON and convert it into a Ruby hash.
```
>>kele_client.get_me
```
### Mentor Availability

Retrieve a list of a mentor's available time slots for the current user from the Bloc API by defining get_mentor_availability which can be used as follows:
```
>> kele_client.get_mentor_availability(mentor_id)
```
### Roadmaps and Checkpoints

Retrieve roadmaps with their associated sections and checkpoints by defining get_roadmap to be used as follows:
```
>> kele_client.get_roadmap(roadmap_id)
```
Retrieve checkpoints with their associated body and assignment by defining get_checkpoint to be used as follows:
```
>> kele_client.get_checkpoint(checkpoint_id)
```
### Retrieving and Creating Messaging

Retrieve all message threads for the current user by defining get_messages. The all message threads endpoint returns message threads paginated with 10 threads per page and a total count of all threads. Either return the first page of messages or a specified page.
```
>> kele_client.get_messages(1)
>> kele_client.get_messages
```
Kele can create new messages using create_message
```
>>kele_client.create_message(sender, recipient_id, subject, stripped_text, token)
```
### Submitting Checkpoints

Create new Bloc checkpoint submission:

>> kele_client.create_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment)


Creating a Ruby gem.
