# Postman Markdown Documentation Generator

The goal of this project is to convert the existing postman `v2.1` collections
into presentable markdown. The gem can be used in your shell and in your ruby
code.

The reason markdown was chosen was because it was human readable and there are
a plethora of markdown viewers and markdown tools in existence.

## Installation
```
gem install postman_markdoc
```

## How To Use
Make sure you [export your postman collection](https://learning.getpostman.com/docs/postman/collections/data_formats/#exporting-and-importing-postman-data)
in 2.1 format.

### Shell usage


Generating markdown files
```
cat collection.json | postman_markdoc > collection.md
```

```
postman_markdoc collection_1.json collection_2.json > collection.md
```

### Ruby Usage
```
require 'postman_markdoc'
markdown = PostmanMarkdoc.files_to_markdown('path/to/file1', ...)
```

```
raw_json = IO.read('path/to/file1')
markdown = PostmanMarkdoc.raw_json_to_markdown(raw_json)
```



## TODO
* [x] have something working
* [x] Support multiple JSON files
* [ ] support nested folders
* [ ] Support multiple versions
* [ ] test cases
* [ ] docker
* [ ] versioning
