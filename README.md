# code_challenge

A new Flutter project code challenge

## Getting Started

This Flutter project uses Clean Architecture and Flutter BLoC

- Domain:
  - There is a layer for domain where you can find this entity, also the repositories abstract class
  that represents what a valid repository will need to implement in order to work.
  - TeamMember will be our main entity and its using freezed.
  - Use cases layer to define the flows/abstractions that the BLoC will call.

- Data:
  - Currently data layer will hold the datasource where its implemented the connection to the json file asset.
  - Its also mocking the 2 seconds to make it feel like is taking a few seconds to get the data. 
  - It also holds the implementation made for the repository defined in the domain layer. 

- Presentation:
  - bloc:
    - TeamMemberBloc:
      - It holds the current state and also map the events to whatever actions are needed. 
    - TeamMemberEvent
      - It holds the definition for the events available to send to the BLoC
    - TeamMemberState:
      - It holds the state representation for the team members screen.
        - TeamMembersInitial
        - TeamMembersLoading
        - TeamMembersEmpty
        - TeamMembersLoaded
    - pages:
      - Currently the only page is the Home for the Team Members list. 
    - widgets:
      - Widgets created for the team members page.
        - Team Member Card
        - Team Member Bio
        - Team Member Photo (Avatar with fallback local asset)
        - Team Member Info (first name, last name, role/title)
        - Team Member List (holds the list widget)

- Dependency Injection:
  - The project is also using dependency injection package get_it, this is located in the core package
    - In the file di.dart you will find the initialization of:
      - data sources
      - repositories
      - bloc
      - use cases
    - This di is initialized in the main.dart main method.

Note:
First, I thank you for the opportunity to have a nice conversation in the interviews and the chance to make this code 
challenge. I would like to also be transparent, I am currently on a trip through Europe with my family 
(including grandpa and grandma that require some support) from December 13 to December 31st. 
I did not had much time that I could focus or dedicate into this challenge since I had to move a lot between trains and cities
the last 3-4 days but I also understand there is a deadline so I have tried to make it using clean architecture and bloc that I think it 
was the main focus of this and I am happy to keep working on this if needed after the 31st, I appreciate the understanding and opportunity,
I would love to be part of the company/team, the environment you have based on what I was able to feel from the interviews sounds really good
and the kind of place I have been looking to join.

Thank you!, 

Diego Gutierrez
