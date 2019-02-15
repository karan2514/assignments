// Import io so we can use file objects
package com.abc.assignment6;
import java.io.*;

public class Search_string {
	public static void main(String args[]) {
		try {
			// Open the file c:\test.txt as a buffered reader
			BufferedReader bf = new BufferedReader(new FileReader("testout.txt"));
			
			// Start a line count and declare a string to hold our current line.
			int linecount = 0;
    			String line;

			// Let the user know what we are searching for
			System.out.println("Searching for " + args[0] + " in file...");

			// Loop through each line, stashing the line into our line variable.
			while (( line = bf.readLine()) != null)
			{
    				// Increment the count and find the index of the word
    				linecount++;
    				int indexfound = line.indexOf(args[0]);

    				// If greater than -1, means we found the word
    				if (indexfound > -1) {
    				     System.out.println("Word was found at position " + indexfound + " on line " + linecount);
    				}
			}

			// Close the file after done searching
			bf.close();
		}
		catch (IOException e) {
			System.out.println("IO Error Occurred: " + e.toString());
		}
	}
}
