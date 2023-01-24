import { GiShoppingCart } from 'react-icons/gi';
import { NavLink, Link } from "react-router-dom";
function Header( { onLogin } ) {
    
    return (
        <div>
            <img className="logo" src="kshop.png" alt="logo"></img>
            {/* <h1> K-Shop</h1> */}
            <br />
            <div className="navbar" >
                <NavLink className="nav-link" to="/">
                    Home 
                </NavLink>
                <NavLink className="nav-link" to="/items">
                    All 
                </NavLink>
                <NavLink className="nav-link" to="/profile">
                    Me 
                </NavLink>
            </div>
            <div>
                <Link to={'/carts'}> < GiShoppingCart className='nav-cart'/> </Link>
            </div>
        </div>
    )
}
    
    export default Header;