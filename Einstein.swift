//
//  Einstein.swift
//
//  Created by Zak Goneau
//  Created on 2025-02-21
//  Version 1.0
//  Copyright (c) 2025 Zak Goneau. All rights reserved.
//
//  Calculate energy released with mass using Einstein's equation E = mc^2.

// Import library
import Foundation

// Declare constants 
let SPEED_OF_LIGHT: Float = 299792458.0;

// Define function to calculate energy released
func energyReleased() {

    // Introduce program to user
    print("This program calculates the energy released with a certain mass using E = mc^2")

    // Get user input
    print("Enter a mass (kg): ")

    // Try to assign input as string and convert into float
    guard let weightString = readLine(), let weightFloat = Float(weightString) else {

        // Tell user invalid input if failed conversion
        print("Invalid input. This is not a number.")

        // Exit function
        return
    }

    // Check if weight is negative
    if (weightFloat < 0) {
    
        // Print result to user
        print("\(weightFloat) is negative which is invalid.")

    // Otherwise energy is valid
    } else {

        // Calculate energy released
        let energy = weightFloat * pow(SPEED_OF_LIGHT, 2)

        // Round result
        let roundedEnergy:String = String(format: "%0.3e", energy)

        // Print result to user
        print("The energy released from a mass of \(weightFloat) is : \(roundedEnergy)J")

    }
}
// Call function
energyReleased()
