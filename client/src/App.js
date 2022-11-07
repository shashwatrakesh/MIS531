import "./App.css";
import { useState } from "react";
import Axios from "axios";

function App() {
  const [name, setName] = useState("");
  const [age, setAge] = useState("");
  const [country, setCountry] = useState("");
  const [position, setPosition] = useState("");
  const [wage, setWage] = useState("");
  const [employeeList, setEmployeeList] = useState([])

  const addEmployee = (e) => {
    e.preventDefault();
    Axios.post("http://localhost:3001/create", {
      name: name,
      age: age,
      country: country,
      position: position,
      wage: wage,
    }).then(()=> {e.target.reset()})
  };


  const listEmployees= () => {
    Axios.get("http://localhost:3001/employees").then((res)=> {
      console.log(res)
      setEmployeeList(res.data)
    })
  }

  return (
    <div>
    <div >
    <form onSubmit={addEmployee} className="App">
      <lable>Name:</lable>
      <input
        type="text"
        onChange={(e) => {
          setName(e.target.value);
        }}
      ></input>
      <lable>Age:</lable>
      <input
        type="number"
        onChange={(e) => {
          setAge(e.target.value);
        }}
      ></input>
      <lable>Country:</lable>
      <input
        type="text"
        onChange={(e) => {
          setCountry(e.target.value);
        }}
      ></input>
      <lable>Position:</lable>
      <input
        type="text"
        onChange={(e) => {
          setPosition(e.target.value);
        }}
      ></input>
      <lable>Wage per year:</lable>
      <input
        type="number"
        onChange={(e) => {
          setWage(e.target.value);
        }}
      ></input>
      <div className="addEmployeeButton">
        <button type='submit'>Add employee</button>
      </div>
      </form>
    </div>
    <hr />

    <div className="employeesListButton">
    <button onClick={listEmployees}>List Employees</button>
    </div>

    <div>
        {employeeList.map((employee, key) => {
          return (
            <div className="pd10">
            <span className="pd10">{employee.name}</span>
            <span className="pd10">{employee.age}</span>
            <span className="pd10">{employee.country}</span>
            <span className="pd10">{employee.position}</span>
            <span className="pd10">{employee.wage}</span>
            </div>
          )
        })}
    </div>
    </div>
    
  );
}

export default App;
