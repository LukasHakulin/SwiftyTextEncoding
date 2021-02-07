//
//  Copyright © 2021. All rights reserved.
//

let base16Alphabet = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"]

/*
 * The most widely used Base32 alphabet is defined in RFC 4648.
 * It uses an alphabet of A–Z, followed by 2–7.
 * 0 and 1 are skipped due to their similarity with the letters O and I
 * (thus "2" actually has a decimal value of 26).
 */
let base32Alphabet: [String] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","2","3","4","5","6","7"]

/*
 * Similarly to hexadecimal, the digits used are 0-9 followed by consecutive letters of the alphabet.
 * Unlike many other base 32 notation systems, triacontakaidecimal is contiguous
 * and includes characters that may visually conflict.
 * With the right font it is possible to visually distinguish between 0, O and 1, I.
 */
let extendedHexBase32Alphabet = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V"]

/*
 * z-base-32 is a Base32 encoding designed to be easier for human use and more compact.
 * It includes 1, 8 and 9 but excludes l, v and 2.
 * It also permutes the alphabet so that the easier characters are the ones that occur more frequently.
 */
let zBase32Alphabet = ["y","b","n","d","r","f","g","8","e","j","k","m","c","p","q","x","o","t","1","u","w","i","s","z","a","3","4","5","h","7","6","9"]
