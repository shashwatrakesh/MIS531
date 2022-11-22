import { Link } from "react-router-dom";

const Navbar = () => {
  return (
    <nav className="navbar">
      <Link to="/" style={{ 
        }}><h1>Student Union Memorial Center</h1></Link>
      <div className="links">
      <Link to="/admin" style={{ 
          color: 'white', 
          backgroundColor: '#f1356d',
          borderRadius: '8px' 
        }}>Admin</Link>
        <Link to="/create" style={{ 
          color: 'white', 
          backgroundColor: '#f1356d',
          borderRadius: '8px' 
        }}>Customers</Link>
      </div>
    </nav>
  );
}
 
export default Navbar;