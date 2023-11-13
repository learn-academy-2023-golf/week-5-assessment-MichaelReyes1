// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

const { isFunction } = require("@babel/types")

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.


describe('Secret Code Message', () => {
    it('encodes "Lackadaisical" to "L4ck4d41s1c4l"', () => {
        const secretCodeWord1 = "Lackadaisical"
        // Expected output: "L4ck4d41s1c4l"
        expect(secretCode(secretCodeWord1)).toBe("L4ck4d41s1c4l")
    })

    it('encodes "Gobbledygook" to "G0bbl3dyg00k"', () => {
        const secretCodeWord2 = "Gobbledygook"
        // Expected output: "G0bbl3dyg00k"
        expect(secretCode(secretCodeWord2)).toBe("G0bbl3dyg00k")
    })

    it('encodes "Eccentric" to "3cc3ntr1c"', () => {
        const secretCodeWord3 = "Eccentric"
        // Expected output: "3cc3ntr1c"
        expect(secretCode(secretCodeWord3)).toBe("3cc3ntr1c")
    })
})



// b) Create the function that makes the test pass.

const secretCode = (message) => {
    return message
    .replace(/a/g, '4')
    .replace(/e/g, '3')
    .replace(/i/g, '1')
    .replace(/o/g, '0')
    .replace(/A/g, '4')
    .replace(/E/g, '3')
    .replace(/I/g, '1')
    .replace(/O/g, '0')
}


// Pseudo code:

// Create function secretCode that holds message as a paramter
// return message using .replace method to swap out letter with givin numbers in a string
// /g flag that denotes (globally)

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.
describe('Full House Check', () => {
    it('hand1 is a full house', () => {
        const hand1 = [5, 5, 5, 3, 3]
        // Expected output: true
        expect(isFullHouse(hand1)).toBe(true)
    })
    
    it('hand2 is not a full house', () => {
        const hand2 = [5, 5, 3, 3, 4]
        // Expected output: false
        expect(isFullHouse(hand2)).toBe(false)
    })

    it('hand3 is not a full house', () => {
        const hand3 = [5, 5, 5, 5, 4]
        // Expected output: false
        expect(isFullHouse(hand3)).toBe(false)
    })

    it('hand4 is a full house', () => {
        const hand4 = [7, 2, 7, 2, 7]
        // Expected output: true
        expect(isFullHouse(hand4)).toBe(true)

    })
})

// b) Create the function that makes the test pass.

const isFullHouse = hand => {
    const occurrences = {}
    hand.forEach(num => occurrences[num] = (occurrences[num] || 0) + 1)
  
    const values = Object.values(occurrences)
    return values.includes(3) && values.includes(2) && values.length === 2
  }

// Pseudo code:

// Create isFullHouse function 
// Create empty object to count occurences of each number in the hand
// .forEach number in the hand array
// if number is in the occurrences object add the number to same object with a count of 1 if not set value to 1

// create variable values and assign it to array of values from occurrences
// if values contain 3 and 2 return true ,if  it doesnt include return false 
//Additionally values array has a length of 2 and return true or false if consition is met



// PASS  ./javascript-challenges.test.js
// Secret Code Message
//   ✓ encodes "Lackadaisical" to "L4ck4d41s1c4l" (2 ms)
//   ✓ encodes "Gobbledygook" to "G0bbl3dyg00k"
//   ✓ encodes "Eccentric" to "3cc3ntr1c" (1 ms)
// Full House Check
//   ✓ hand1 is a full house (1 ms)
//   ✓ hand2 is not a full house
//   ✓ hand3 is not a full house (1 ms)
//   ✓ hand4 is a full house

// Test Suites: 1 passed, 1 total
// Tests:       7 passed, 7 total
// Snapshots:   0 total
// Time:        0.651 s, estimated 1 s
// Ran all test suites.
// ✨  Done in 1.74s.




