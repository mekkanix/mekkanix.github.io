# Methods

OwnTrack methods are callable directly on the global instance you retrieve when calling the `OwnTrack` function (it returns an auto-instanciated object).

### .service(name: string)

**Returns a `TrackingService` instance merged with `handlers`-bound functions, corresponding to the given service `name`.**

This method exposes a `TrackingService` corresponding to the given service 
`name` instance in which your "wrapped" tracking functions have been included.

Note that the `TrackingService` instance is only accessible via this method.