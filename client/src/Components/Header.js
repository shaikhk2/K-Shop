import { NavLink, Link } from "react-router-dom";
function Header( { onLogin } ) {
    
    return (
        <div>
            {/* <img src="logo.png" alt="logo"></img> */}
            <h1> K-Shop</h1>
            <br />
            <div className="navbar">
                <NavLink to="/">
                    Home   |
                </NavLink>
                <NavLink to="/items">
                    All    |
                </NavLink>
                <NavLink to="/profile">
                    Me
                </NavLink>
            </div>
            <div>
                <Link to={'/carts'}> Cart </Link>
            </div>
        </div>
    )
}
    
    export default Header;