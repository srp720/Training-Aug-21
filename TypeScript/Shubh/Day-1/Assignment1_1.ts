// Store 5 employees’ data in one array (ID,FirstName,LastName,Address,Salary). Do the operation searching by indexnumber, EmployeeID, Insert the employee, delete the employee from the Array. Create one more array emp and join the value with above array. When display list combine firstname and lastname as fullname, From the address field flatnumber,city,state and should be splited.PF should be computed and total salary should be display.

interface Employee {
    Id: number;
    FirstName: string;
    LastName: string;
    Address: string;
    Salary: number;
  }
  
  let emp1: Employee = {
    Id: 1,
    FirstName: "Shubh",
    LastName: "Patel",
    Address: "007-Address Such Tough, No Diwali Gifts, Received yet-110001",
    Salary: 64800,
  }
  let emp2: Employee = {
    Id: 2,
    FirstName: "Leo",
    LastName: "Messi",
    Address: "LM10-Camp Nou, FC Barcelona, Spain-408975",
    Salary: 100000,
  }
  let emp3: Employee = {
    Id: 3,
    FirstName: "Xavi",
    LastName: "Hernandez",
    Address: "06-Park Street, Barcelona, Spain-498756",
    Salary: 600000,
  }
  let emp4: Employee = {
    Id: 5,
    FirstName: "Sunil",
    LastName: "Chhetri",
    Address: "11-G.O.A.T. House, Fortrada- Bangalore, India-256896",
    Salary: 110000,
  }
  let emp5: Employee = {
    Id: 6,
    FirstName: "Frenkie",
    LastName: "de Jong",
    Address: "21-Ajax House of Amsterdom, Magic Compound, Holand-774856",
    Salary: 212100,
  }

 interface Emp{
    Id: number;
    FirstName: string;
    LastName: string;
    Address: string;
    Salary: number;
 }

let emp6: Emp = {
    Id: 7,
    FirstName: "Cristiano",
    LastName: "Ronaldo",
    Address: "007-Old Trafford, Theatre of Dreams, Manchester-874856",
    Salary: 70700,
}
//Pushing in 1st array
  let employees : Employee[] = [];
employees.push(emp1);
employees.push(emp2);
employees.push(emp3);
employees.push(emp4);
employees.push(emp5);

//Pop operation
employees.pop();

//Array-2
let emp : Emp[]=[];
emp.push(emp6);
  
console.log(employees);

//Search by index
console.log(employees[0]);

//Concat
//   let comb = Employee.concat(Emp); 
 console.log("Combined List is : " + employees.concat(emp) );

//