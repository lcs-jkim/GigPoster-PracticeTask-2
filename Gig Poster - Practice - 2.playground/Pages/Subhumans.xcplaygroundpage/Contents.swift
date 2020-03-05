//: # Gig Poster - Practice Task 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![subhumans-no-grid](subhumans-no-grid.png "Subhumans")
 ![subhumans-with-grid](subhumans-with-grid.png "Subhumans")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a list of related objects or values)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let yellow = Color(hue: 45, saturation: 99, brightness: 100, alpha: 100)
let purple = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)
let brown = Color(hue: 38, saturation: 99, brightness: 38, alpha: 100)
let lightRed = Color(hue: 10, saturation: 80, brightness: 80, alpha: 75)

// Begin your solution here...

canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true

// Make background colour
canvas.fillColor = yellow
canvas.drawRectangle(at: Point(x:0, y:0), width: 400, height: 600)


// Canvas dosen't know how to make parallolegram so have to define the vertices

// Make an list (array) of vertices
canvas.fillColor = purple

// Loop to make line of purple shapes
var counter = 0

for x in stride(from:-135, through: 400, by:155) {
    
    var polygonVertices: [Point] = [] //emply list of points
    polygonVertices.append(Point(x: x, y: 50))
    polygonVertices.append(Point(x: -75 + (counter * 155), y: 150))
    polygonVertices.append(Point(x: 70 + (counter * 155), y: 150))
    polygonVertices.append(Point(x: 10 + (counter * 155), y: 50))

    canvas.drawCustomShape(with: polygonVertices)
    
    counter += 1
    
}

// Another loop for second line
var counter2 = 0

for x in stride(from: -135, through: 400, by:155) {
    
    var polygonVertices: [Point] = [] //emply list of points
    polygonVertices.append(Point(x: x, y: 225))
    polygonVertices.append(Point(x: -75 + (counter2 * 155), y: 325))
    polygonVertices.append(Point(x: 70 + (counter2 * 155), y: 325))
    polygonVertices.append(Point(x: 10 + (counter2 * 155), y: 225))

    canvas.drawCustomShape(with: polygonVertices)
    
    counter2 += 1
    
}

// Make loop for alternating brown shapes
canvas.fillColor = brown

var counter3 = 0

for x in stride(from: -135, through: 400, by:310) {
    
    var polygonVertices: [Point] = [] //emply list of points
    polygonVertices.append(Point(x: x, y: 50))
    polygonVertices.append(Point(x: -75 + (counter3 * 155), y: 150))
    polygonVertices.append(Point(x: 70 + (counter3 * 155), y: 150))
    polygonVertices.append(Point(x: 10 + (counter3 * 155), y: 50))

    canvas.drawCustomShape(with: polygonVertices)
    
    counter3 += 2

}

// Same thing for the top line
var counter4 = 0

for x in stride(from: -135, through: 400, by:310) {
    
    var polygonVertices: [Point] = [] //emply list of points
    polygonVertices.append(Point(x: x, y: 225))
    polygonVertices.append(Point(x: -75 + (counter4 * 155), y: 325))
    polygonVertices.append(Point(x: 70 + (counter4 * 155), y: 325))
    polygonVertices.append(Point(x: 10 + (counter4 * 155), y: 225))

    canvas.drawCustomShape(with: polygonVertices)
    
    counter4 += 2

}

// Orange ones now! Same thing! Use loop to change one point and the counter takes care of the rest
canvas.fillColor = lightRed

var counter5 = 0

for x in stride(from: -135, through: 400, by:155) {

var polygonVertices: [Point] = [] //emply list of points
polygonVertices.append(Point(x: x, y: 137))
polygonVertices.append(Point(x: -75 + (counter5 * 155), y: 237))
polygonVertices.append(Point(x: 70 + (counter5 * 155), y: 237))
polygonVertices.append(Point(x: 10 + (counter5 * 155), y: 137))

canvas.drawCustomShape(with: polygonVertices)

counter5 += 1

}

// Ok add the title text
canvas.textColor = Color.black
canvas.drawText(message: "subhumans", at: Point(x: 18, y: 330), size: 50, kerning: 0)

// now to add subtext #1
canvas.drawText(message: "friday, april 13 1984", at: Point(x: 18, y: 430), size: 10, kerning: 0)
canvas.drawText(message: "advance $6.50, door $7.50", at: Point(x: 18, y: 415), size: 10, kerning: 0)
canvas.drawText(message: "no age limit", at: Point(x: 18, y: 400), size: 10, kerning: 0)

// Subtext #2 now
canvas.drawText(message: "at olympic auditorium", at: Point(x: 150, y: 430), size: 10, kerning: 0)
/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

