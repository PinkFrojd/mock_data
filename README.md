# mock_data


[![License](https://img.shields.io/github/license/PinkFrojd/mock_data.svg)](https://github.com/PinkFrojd/mock_data/blob/master/LICENSE.txt)
[![Build status](https://travis-ci.org/PinkFrojd/mock_data.svg?branch=master)](https://travis-ci.org/PinkFrojd/mock_data)

Generate random data(integer, string, ipv4, name and more) using Dart.

<img width="300" src="https://c512911.ssl.cf3.rackcdn.com/Moq2/mock.gif" alt="mocking Nelson Muntz" />

Inspired by: https://www.npmjs.com/package/mock-data


## Usage

A simple usage example:

```dart
import 'package:mock_data/mock_data.dart';

main() {
  
  // Mock string of given length and group of characters:
  
  // Generate string of length 16(default) and any 
  // combination of letters and digits.
  mockString();
  
  // Generate string of length 10 and any combination
  // of letters and digits.
  mockString(10);
  
  // Generate string of length 15 and any combination
  // of lowercase letters and digits.
  mockString(15, 'a#');
  
  // Generate string of length 3 and any combination
  // of letters and digits.
  mockString(3, '!');
  
  // Generate string of length 7 and any combination
  // of letters.
  mockString(7, 'aA');

  // Mock integer in range from min to max, inclusive:
  
  // Generate integer in range from min(default 1)
  // to max(default 10). Works with negative numbers.
  mockInteger();
  
  // Generate integer in range from 3 to 30.
  mockInteger(3, 30);
  
  // Generate integer in range from -15 to 5.
  mockInteger(-15, 5);
  
  // Generate integer in range from -25 to -15.
  mockInteger(-25, -15);

  // Mock IPv4 with given format:
  
  // Generate IPv4 represented with
  // format(default is '*.*.*.*') as String. 
  mockIPv4();
  
  // Generate IPv4 starting with groups of
  // 192, 168 and 0, followed by any integer
  // of last group.
  mockIPv4('192.168.0.*');
  
  // Generate IPv4 starting with groups of
  // 192 and 168, followed by any integer
  // of last two groups.
  mockIPv4('192.168.*.*');
  
  // Generate IPv4 starting with groups of
  // 192, followed by any integer
  // of next two groups and end group of 55.
  mockIPv4('192.*.*.55');

  // Generate IPv6;
  mockIPv6();
  mockIPv6('*:e331:93bf:*:a7c9:a63:*:*');
  mockIPv6('e1b3:7bae:*:3474:*:c0cc:462:c4b9');

  // Mock first name from passed gender:
  
  // Generate male or female first name. 
  mockName();
  
  // Generate male first name. 
  mockName('male');
  
  // Generate female first name. 
  mockName('female');
  
  // Mock color from a given color model:
  
  // Generate color represented in hex or rgb format.
  mockColor(); 
  
  // Generate color represented in hex format.
  mockColor('hex');
  
  // Generate color represented in rgb format.
  mockColor('rgb');
  
  // Generate color represented in hsl format.
  mockColor('hsl');
  
  // Generate color represented in hsv format.
  mockColor('hsv');
  
  // Generate color represented in cmyk format.
  mockColor('cmyk');
  
  // Mock url from passed parameters:
  
  // Generate url starting with http scheme.
  mockUrl('http');
  
  // Generate url starting with http or https
  // followed by 1 to 4 paths.
  mockUrl('*', true);
  
  // Generate url starting with https
  // followed by 1 to 4 paths
  // followed by fragment(permalink).
  mockUrl('https', true, false, true);
  
  // Mock DateTime from two moments in time:
    
  // Generate DateTime object in between
  // 1970-01-01 01:00:00.000 and now.
  mockDate();
  
  // Generate DateTime object in between
  // 1995-00-00 00:00:00.000 and now.
  mockDate(DateTime(1995));
  
  // Generate DateTime object in between
  // 1995-00-00 00:00:00.000 and now.
  mockDate(DateTime(1995, 26, 7), DateTime(2005, 26, 7));
  
  // Generate DateTime object in between
  // 2015-10-21 04:29:00.000 and now.
  mockDate(DateTime.parse("2015-10-21 04:29:00"));
  
  // Generate range of mocks of particular
  // function(more at documentation).
  mockRange(mockString, 3);
  mockRange(mockInteger, 5, min: 3, max: 15);
  mockRange(mockIPv4, 7, format: '*.*.0.0');
  mockRange(mockName, 5, gender: 'male');
  mockRange(mockColor, 12, returnModel: 'hex');
  mockRange(mockUrl, 4, scheme: 'http', withQuery: true);
  mockRange(mockDate, 5, firstMoment: DateTime(2010, DateTime.november, 2));

}
```

More explanation and examples at [documentation][].

### TODO
Please see [TODO][].

### Contributors
- [Dinko Pehar](https://github.com/PinkFrojd)
- [Nagasai Bodepudi](https://github.com/nagasaiBodepudi)

### License
[MIT][].

[TODO]: https://github.com/PinkFrojd/mock_data/blob/master/TODO.md
[MIT]: https://github.com/PinkFrojd/mock_data/blob/master/LICENSE.txt
[documentation]: https://pub.dartlang.org/documentation/mock_data/latest/
