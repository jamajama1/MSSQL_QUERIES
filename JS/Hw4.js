
let max = 5;

function truncate(str, max) {
    console.log(str);
    if (str.length > max){
        var output = str.substring(0, max);
        console.log(output + '...');
    }
}