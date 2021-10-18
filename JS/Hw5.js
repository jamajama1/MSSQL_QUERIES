
//Create an array styles with items “James” and “Brennie”.
let styles = ["James", "Brennie"];

//Append “Robert” to the end.
styles.push("Robert");

//Replace the value in the middle by “Calvin”. Your code for finding the middle value should work for any arrays with odd length.
styles[Math.round((styles.length - 1) / 2)] = "Calvin";

//Remove the first value of the array and show it.
styles.shift();
console.log(styles);

//Prepend Rose and Regal to the array.
styles.unshift("Rose","Regal");

//Final
console.log(styles);

