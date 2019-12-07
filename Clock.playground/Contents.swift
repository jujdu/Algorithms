var hours = 0
var minutes = 0
var seconds = 0

for i in 0..<(60 * 60 * 24) {
    if hours == minutes && minutes == seconds {
        print(hours)
    }
    hours += 1
    minutes += 12
    seconds += 720
    
    if hours == (60*60*12) { hours = 0 }
    if minutes == (60*60*12) { minutes = 0 }
    if seconds == (60*60*12) { seconds  = 0 }
}
