
Factorio's Rail pathfinder is [A*](https://en.wikipedia.org/wiki/A*_search_algorithm) with various penalties to the distances based on entities attached to the rail, and trains on the rail. This mod allows adjusting these weights.

The pathfinder first builds a list of non-disabled stops that match the name in the schedule, then searches outward from both ends of the train at once, if applicable, in segments. A segment is an uninterrupted plain sequence of rails, with no intersections, stops, or signals (all of which define segment borders). The base distance for a segment is it's length (linear grid length along teh center of the rail), which is then adjusted as follows:

* A segment ending in a circuit-closed signal is lengthened by  *Signal Reserved By Circuit Network Penalty*
* A segment in a currently-occupied block is lengthened by 2/(1+distance of block from start)
* A segment starting or ending with stops is lengthened by *Train Stop Penalty*
* A segment which is in a new block along the path that has a train in it is lengthened by:
  * *Stopped Manually Controlled Train Penalty*
  * *Stopped Manually Controlled Train Without Passenger Penalty*
  * *Train In Station Penalty*
  * *Train In Station With No Other Valid Stops In Schedule*
  * *Train Arriving To Station Penalty*
  * *Train Arriving To Signal Penalty*
  * *Train Waiting At Signal Penalty*
  * *Train Waiting At Signal Tick Multiplier Penalty*
