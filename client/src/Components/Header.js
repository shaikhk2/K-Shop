import { GiShoppingCart } from 'react-icons/gi';
import { NavLink, Link } from "react-router-dom";
function Header( { onLogin } ) {
    
    return (
        <div>
            <img className="logo" src="kshop.png" alt="logo"></img>
            {/* <h1> K-Shop</h1> */}
            <br />
            <div className="navbar" >
                {/* <NavLink className="nav-link" to="/">
                    Home 
                </NavLink> */}
                <NavLink className="nav-link" to="/items">
                    Home 
                </NavLink>
                <NavLink className="nav-link" to="/profile">
                    Account 
                </NavLink>
                <Link className='nav-cart' to={'/carts'}> < GiShoppingCart size={45} /> </Link>
            </div>
        </div>
    )
}
    
    export default Header;