package org.sormar

class Agreement {
    static mapWith = "mongo"
    int agree = 0
    int disagree = 0
    def String toString () {
	return "agree: " + agree + " disagree:" + disagree 
    }
}
