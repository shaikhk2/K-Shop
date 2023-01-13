import { NavLink, Link } from "react-router-dom";
function Header( { onLogin } ) {
    
    return (
        <div>
            <h1> K-Shop</h1>
            <br />
            <div className="navbar">
                <NavLink to="/">
                    Home
                </NavLink>
                <NavLink to="/items">
                    All
                </NavLink>
                <NavLink to="/profile">
                    Me
                </NavLink>
            </div>
        </div>
    )
}
    
    export default Header;