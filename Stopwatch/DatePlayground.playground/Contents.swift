import Foundation

let startTime: NSDate = NSDate()

var newYearsDayComponents = DateComponents()
newYearsDayComponents.year = 2015
newYearsDayComponents.month = 1
newYearsDayComponents.day = 1
let calendar = Calendar.current
let newYearsDay = calendar.date(from: newYearsDayComponents)!

var valentinesDayComponents = DateComponents()
valentinesDayComponents.year = 2015
valentinesDayComponents.month = 2
valentinesDayComponents.day = 14
valentinesDayComponents.hour = 9 // start at 9 AM
let valentinesDay = calendar.date(from: valentinesDayComponents)!

// Calculate time differences
let diffVD2NYD = valentinesDay.timeIntervalSince(newYearsDay)
let diffNYD2VD = newYearsDay.timeIntervalSince(valentinesDay)

// Converting time difference to days and hours
let diffDays = Int(diffVD2NYD / 86400) // Seconds in a day
let diffHours = Int((diffVD2NYD.truncatingRemainder(dividingBy: 86400)) / 3600) // Seconds in an hour

// Combine into a formatted string
let diffVD2NYDAsString: String = String(format: "%02d:%02d", diffDays, diffHours)

// Elapsed time from startTime to now
var elapsedTime = startTime.timeIntervalSinceNow

