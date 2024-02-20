#  SubtopicMaker - utility to build topic-info.json

version 0.1.1 - initial release

takes a structure produced by gpt-4 from a list of detailed topics via:

   please cluster this list of topics and counts into a smaller list of topics based on reasonable similarity, throw away the counts

   please output the revised list  as a json dictionary
   
produces a file in the form of TopicData as required by Xpando

``` 
OVERVIEW: SubtopicMaker - utility to build topic-info.json

USAGE: subtopic-maker <input> [--output <output>]

ARGUMENTS:
  <input>                 Path to Input File

OPTIONS:
  --output <output>       Path to Output File
  --version               Show the version.
  -h, --help              Show help information.
```


