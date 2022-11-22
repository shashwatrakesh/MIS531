import { useState } from "react";
import axios from "axios";
import Stores from "./Stores";
import Employees from "./Employees";

const Admin = () => {

  const [stores, setStores] = useState(false);
  const [employee, setEmployee] = useState(false);
  const [storesData, setStoresData] = useState([])

  const handleStoresClick = async () => {
    await axios.get("http://localhost:3001/stores").then((res) => {
            console.log(res.data.rows)
            setStoresData(res.data.rows)
        })
    setStores(true)
    setEmployee(false)
  }

  const handleEmployeeClick = () => {
    setStores(false)
    setEmployee(true)
  }

  return (
    <>
      <nav className="navbar">
        <h1>Admin Tables: </h1>
        <div className="links">
          <button onClick={handleStoresClick} style={{
            color: 'white',
            backgroundColor: '#f1356d',
            borderRadius: '8px',
            margin: '2px'
          }}>STORES</button>
          <button onClick={handleEmployeeClick} style={{
            color: 'white',
            backgroundColor: '#f1356d',
            borderRadius: '8px',
            margin: '2px'
          }}>EMPLOYEE</button>
        </div>
      </nav>
      {stores && <Stores store={storesData}/>}
      {employee && <Employees />}
    </>
  );
}

export default Admin;