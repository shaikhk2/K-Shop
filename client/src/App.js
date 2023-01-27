import { useState, useEffect } from 'react';
import { Switch, Route } from 'react-router-dom';
// import { useHistory } from 'react-router-dom';
import './App.css';
// import PantContainer from './PantContainer';
// import DressContainer from './DressContainer';
// import SuitContainer from './SuitContainer';
import ItemContainer from './Containers/ItemContainer';
import CartContainer from './Containers/CartContainer';
import Home from './Components/Home';
import Profile from './Components/Profile';
import Signup from './Components/Signup';
import Login from './Components/Login';
import ShowContainer from './Containers/ShowContainer';
import Header from './Components/Header';
// import { useCookies } from 'react-cookie';

function App() {

  const [users, setUsers] = useState([])
  const [items, setItems] = useState([])
  const [currentUser, setCurrentUser] = useState(null)
  // console.log( "who is logged in?", currentUser )
  const [cart, setCart] = useState([])
  // const [cookies, setCookie] = useCookies(['user']);
  // console.log(items);
  useEffect(() => {

    fetch("/items")
    .then(r => {
      if (r.ok) {
        r.json().then(data => setItems(data))
      }
    })
  }, [currentUser])
   
  function handleLogin(user) {
    setUsers(user);
  }
  useEffect( () => {
    fetch("/persist")
    .then( r => {
      if(r.ok) {
        r.json().then(user => 
          setCurrentUser(user))
      }
    })
  },[])

  function AddToCart(item, currentUser) {
      fetch("/cart_items", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ 
          item_id:item.id,
          user_id:currentUser.id 
        }),
      })
      .then(r => r.json())
      .then(cartitem => {
        setCart([...cart, cartitem])
        // console.log(cartitem)
      })
      .catch(err => console.log(err))
  }
  // console.log(cart)
  
  function deleteCartItem(doomedCartItem) {
    fetch(`/cart_items/${doomedCartItem.id}`, {
        method: "DELETE",
    })
    .then(() => {
      const newCartItems = cart.filter((cartitem) => cartitem.id !== doomedCartItem.id);
      setCart(newCartItems);
    })
  }
  //to logout, delete cookies and set currentUser to null

  //

  return (
    <div className="App">
      <Header onLogin={handleLogin} setCurrentUser={setCurrentUser} />
      { !currentUser ? 
      <>
      <Switch>
        <Route path="/login">
          <Login onLogin={handleLogin} setCurrentUser={setCurrentUser} error={'Please login'} />
        </Route>
        <Route path="/signup">
          <Signup currentUser={currentUser} setCurrentUser={setCurrentUser}  error={'Please login'} />
        </Route>
      </Switch>
      </>
      : 
      <Switch>
        {/* <Route exact path="/">
          <Home />
        </Route> */}
        <Route exact path="/items">
          <ItemContainer  user={currentUser} items={ items } AddToCart={ AddToCart } />
        </Route>
        <Route path="/item/:id">
          <ShowContainer />
        </Route>
        <Route path="/carts">
          <CartContainer handleDelete={ deleteCartItem } cart={ cart } />
        </Route>
        <Route path="/profile">
          <Profile currentUser={ currentUser } setCurrentUser={setCurrentUser}/>
        </Route>
      </Switch>
      }
      {/* { currentUser ? <Header /> : null} */}
    </div>
  );
}

// create a route for persist
// fetch delete to cartitem(obvi)

export default App;
