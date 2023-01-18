import { useState, useEffect, useReducer } from 'react';
import { Switch, Route, useRoutes } from 'react-router-dom';
import { useHistory } from 'react-router-dom';
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

function App() {

  const [users, setUsers] = useState([])
  const [items, setItems] = useState([])
  const [currentUser, setCurrentUser] = useState(null)
  const [cart, setCart] = useState([])
  // const history = useHistory()


  useEffect(() => {

    fetch("/items")
    .then(r => r.json())
    .then(data => setItems(data))
  }, [])

  function handleLogin(user) {
    setUsers(user);
  }

  function handleLogout() {
    setUsers();
  }

  function AddToCart(item, user) {
    // fetch("/carts")
    // const newArray = [ ...cart, item ]
    // setCart(newArray);
    // e.preventDefault();
          // Logs in user
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
      .then(data => {
        setCart([...cart, data])
        console.log(data)
      })
      .catch(err => console.log(err))
    //   .then((r) => {
    //     if (r.ok) {
    //       // r.json().then((customer) => onLogin(customer));
    //       r.json().then(item => {
    //         setCart(item)
    //         history.push("/carts")
    //       })
    //     }
    // });
    // console.log(item)
  }
  console.log(cart)
  // function ShowCart() {
    
  // }


  return (
    <div className="App">
      <Header onLogin={handleLogin} setCurrentUser={setCurrentUser} />
      { !currentUser ? 
      <>
      <Login onLogin={handleLogin} setCurrentUser={setCurrentUser} error={'Please login'} />
      <br/><br/>
      <Signup currentUser={currentUser} setCurrentUser={setCurrentUser}  error={'Please login'} />
      </>
      : 
      <Switch>
        <Route path="/login">
          <Login />
        </Route>
        <Route path="/signup">
          <Signup />
        </Route>
        <Route exact path="/">
          <Home />
        </Route>
        <Route path="/items">
          <ItemContainer  user={users} items={ items } AddToCart={ AddToCart } />
        </Route>
        <Route path="/item/:id">
          <ShowContainer />
        </Route>
        <Route path="/carts">
          <CartContainer cart={ cart } />
        </Route>
        <Route path="/profile">
          <Profile currentUser={ currentUser }/>
        </Route>
      </Switch>
      }
    </div>
  );
}

export default App;
