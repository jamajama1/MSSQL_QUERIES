

let menu = {
    width: 200,
    height: 300,
    title: "My menu"
};

console.log(multiplyNumeric(menu));


function multiplyNumeric(menu)  {
    menu.width *= 2;
    menu.height *= 2;
    return menu;
}