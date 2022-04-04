A workaround for a date object without time. Since dart only has DateTime.

# Usage
This is generally a wrapper around DateTime in dart, so it has all the methods DateTime has.

For example:

```dart
final now = Date.now();
final berlinWallFell = Date(1989, 11, 9);
final moonLanding = Date.parse('1969-07-20');
```

You can use properties to get the individual units of a DateTime object.

```dart
print(berlinWallFell.year); // 1989
print(berlinWallFell.month); // 11
print(berlinWallFell.day); // 9
```

# Comparing Date objects
The Date class contains methods for comparing Date chronologically, such as isAfter, isBefore, and isAtSameMomentAs.

```dart
print(berlinWallFell.isAfter(moonLanding)); // true
print(berlinWallFell.isBefore(moonLanding)); // false
print(dDay.isAtSameMomentAs(localDay)); // true
```

# Using Date with Duration
Use the add and subtract methods with a Duration object to create a Date object based on another. For example, to find the point in time that is 36 hours after now, you can write:

```dart
final now = Date.now();
final later = now.add(const Duration(hours: 36));
```

To find out how much time is between two Date objects use difference, which returns a Duration object:

```dart
final difference = berlinWallFell.difference(moonLanding);
print(difference.inDays); // 7416
```

# Constructors
Constructs a Date instance specified. 
```dart
Date(int year, [int month = 1, int day = 1])
```

Constructs a Date instance with current date.
```dart
Date.now()
```

# Properties
## day → int
The day of the month [1..31]

## month → int
The month [1..12]

## year → int
The year. 

# Methods
## add(Duration duration) → Date
Returns a new Date instance with duration added to this. 

## compareTo(Date other) → int
Compares this Date object to other, returning zero if the values are equal. 

## difference(Date other) → Duration
Returns a Duration with the difference when subtracting other from this. 

## isAfter(Date other) → bool
Returns true if this occurs after other. 

## isAtSameMomentAs(Date other) → bool
Returns true if this occurs at the same moment as other. 

## isBefore(Date other) → bool
Returns true if this occurs before other. 

## subtract(Duration duration) → Date
Returns a new Date instance with duration subtracted from this. 

## toString() → String
Returns a human-readable string for this instance



# Static Methods
## parse(String formattedString) → Date
Constructs a new Date instance based on formattedString. 

## tryParse(String formattedString) → Date?
Constructs a new Date instance based on formattedString. 