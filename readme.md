# CS452 Project: Natural Language AI SQL
A Python script that uses OpenAI GPT models to translate Natural Language into SQL queries that access a database modeled after BYU's Women in Computer Science club. 

## Database Schema
The system manages a university club database containing:

- Members: Club members with contact information, major, and membership dates
- Officers: Leadership roles held by members with position, term dates, and history tracking
- Companies: External organizations that may sponsor or collaborate on events
- Events: Club activities, optionally linked to companies, with title, date, and times
- Officer Events: Assignments of officers to specific events
- Rooms: Campus rooms with building, number, and capacity
- Room Reservations: Scheduled use of rooms for events with start/end times
- Catering: Restaurants providing food for events
- Event Catering: Links between events and their catering providers
- RSVPs: Member responses to event invitations (attending or not attending)
- Attendance: Actual records of which members attended events

## Sample Questions
* How many members are there in the club?
* Add a new member to the club. Her name is Catherine and her email is [catherine@byu.edu]() (dummy email)
* How many events has the club president been in charge of organizing?
* How long has the club been active?
* Which companies have partnered with the club?
* What is being brought for food at the next event?
* How many people are planning on attending the next event?
* What's the ratio of officers to registered members in the club?
* What's the most common restaurant that companies are going to cater events with this year?


## Output
Results are saved as JSON files with:

- Generated SQL queries
- Raw database results
- Human-friendly explanations
- Error handling information

--- 
_Credit: With permission, this README follows an outline created by classmate Doyoung Yoon._
