# WCL Courses

This repository contains machine-readable listings of courses at [American University, Washington College of Law](http://www.wcl.american.edu/).

## Data

To generate the first batch of data, I used Google Spreadsheet's `importHtml` function to parse the HTML table found [here](http://www.wcl.american.edu/registrar/coursesapp/searchcourse2.cfm?time=fall_2013). Then I simply downloaded the spreadsheet as a CSV. I wrote a quick script, `parse.rb`, which parses the CSV, cleans up some of the values, and creates a JSON file called `2013-fall.json`.

Finally, you may use `analyze.rb` to play with the data.

Here's a sample row of JSON:

```javascript
{
  "course"=>"0096LAW-096-001",
  "waitlisted"=>false,
  "title"=>"Lgl Eng for Lawyers \nThis course has a Wait List",
  "syllabus"=>false,
  "credits"=>0,
  "instructor"=>"Hein-Dunne",
  "currently_enrolled"=>17,
  "enrollment_limit"=>17,
  "days"=>"TTH",
  "room"=>"527",
  "from"=>"01:00PM",
  "to"=>"02:50PM",
  "url"=>"http://www.wcl.american.edu/registrar/coursesapp/inf_course.cfm?number=LAW-096-001&time=fall_2013"
}
```

### License

To the furthest extent possible, the data and code in this repository is licensed under the Creative Commons License [BY-NC-SA](http://creativecommons.org/licenses/by-nc-sa/3.0/).

#### Fair Use

Data in this repository originated on a copyrighted web page. However, the use of the data here likely falls under [the Fair Use provision of United States copyright law](http://www.copyright.gov/fls/fl102.html):

```markdown
One of the rights accorded to the owner of copyright is the right to reproduce or to authorize others to reproduce the work in copies or phonorecords. This right is subject to certain limitations found in sections 107 through 118 of the copyright law (title 17, U. S. Code). One of the more important limitations is the doctrine of “fair use.” The doctrine of fair use has developed through a substantial number of court decisions over the years and has been codified in section 107 of the copyright law.

Section 107 contains a list of the various purposes for which the reproduction of a particular work may be considered fair, such as criticism, comment, news reporting, teaching, scholarship, and research. Section 107 also sets out four factors to be considered in determining whether or not a particular use is fair.

1. The purpose and character of the use, including whether such use is of commercial nature or is for nonprofit educational purposes
2. The nature of the copyrighted work
3. The amount and substantiality of the portion used in relation to the copyrighted work as a whole
4. The effect of the use upon the potential market for, or value of, the copyrighted work
```

The reproduction of data in this repository is not of commercial nature and will be used for research. Such research will may potentially serve as the basis for commentary on WCL.