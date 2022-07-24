## Web Parser
#### A solution to a technical challenge, creating a web parser returning a number of views and unique views of a web page, sorted descending.

Example output:

``` 
Entries by total views:
/about/2 90 visits
/contact 89 visits
/index 82 visits
/about 81 visits
/help_page/1 80 visits
/home 78 visits

Entries by unique views:
/help_page/1 23 unique visits
/contact 23 unique visits
/home 23 unique visits
/index 23 unique visits
/about/2 22 unique visits
/about 21 unique visits
```

***Install & run:***
In your terminal run commands below:

`bundle install`
`chmod +x parser.rb`

To run in your terminal use the command below with the name of the file that you want to parse:
`./parser.rb <your_filename.log>`

ex. 
`./parser.rb webserver.log`

***Run tests:***
To run tests in your terminal use command below:
`rspec`