// reach into DOM and get the button, 
// input, and button
let button = document.getElementById("submit");
let newItem = document.getElementById("iteminput");
let theList = document.getElementById("thelist");

button.addEventListener("click",function(event){
  if (newItem.value){ 
    let textNode = document.createTextNode(newItem.value);
    let newListItem = document.createElement("li");
    newListItem.appendChild(textNode);
    theList.appendChild(newListItem);
    newItem.value = "";
  }
});
