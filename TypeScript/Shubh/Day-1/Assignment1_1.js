var emp1 = {
    Id: 1,
    FirstName: "Shubh",
    LastName: "Patel",
    Address: "007-Address Such Tough, No Diwali Gifts, Received yet-110001",
    Salary: 64800
};
var emp2 = {
    Id: 2,
    FirstName: "Leo",
    LastName: "Messi",
    Address: "LM10-Camp Nou, FC Barcelona, Spain-408975",
    Salary: 100000
};
var emp3 = {
    Id: 3,
    FirstName: "Xavi",
    LastName: "Hernandez",
    Address: "06-Park Street, Barcelona, Spain-498756",
    Salary: 600000
};
var emp4 = {
    Id: 5,
    FirstName: "Sunil",
    LastName: "Chhetri",
    Address: "11-G.O.A.T. House, Fortrada- Bangalore, India-256896",
    Salary: 110000
};
var emp5 = {
    Id: 6,
    FirstName: "Frenkie",
    LastName: "de Jong",
    Address: "21-Ajax House of Amsterdom, Magic Compound, Holand-774856",
    Salary: 212100
};
var emp6 = {
    Id: 7,
    FirstName: "Cristiano",
    LastName: "Ronaldo",
    Address: "007-Old Trafford, Theatre of Dreams, Manchester-874856",
    Salary: 70700
};
var employees = [];
employees.push(emp1);
employees.push(emp2);
employees.push(emp3);
employees.push(emp4);
employees.push(emp5);
employees.pop();
var emp = [];
emp.push(emp6);
//...do other products.push(_) to add more objects...
console.log(employees);
//console.log(employees[0]);
//   let comb = Employee.concat(Emp); 
console.log("Combined List is : " + employees.concat(emp));
