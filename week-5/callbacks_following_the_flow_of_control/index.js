console.log(1)

$.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
  console.log(3)
  peopleResponse.forEach(function(person) {
    console.log(4)
    console.log(person.name);
  });
});
console.log(2)
  


 

 

