import { useState, useEffect } from 'react';
import { Switch, Route } from 'react-router-dom';
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

  return (
    <div className="App">
      <Header onLogin={handleLogin} setCurrentUser={setCurrentUser} />
      { !currentUser ? 
      <>
      <Login onLogin={handleLogin} setCurrentUser={setCurrentUser} error={'Please login'} />
      <br/><br/>
      <Signup currentCustomer={currentUser} setCurrentCustomer={setCurrentUser}  error={'Please login'} />
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
          <ItemContainer items={items}/>
        </Route>
        {/* <Route path="/shirts">
          <ShirtContainer  shirts={shirts}/>
        </Route>
        <Route path="/pants">
          <PantContainer />
        </Route>
        <Route path="/dresses">
          <DressContainer />
        </Route>
        <Route path="/gowns">
          <GownContainer />
        </Route>
        <Route path="/suits">
          <SuitContainer />
        </Route> */}
        <Route path="/item/:id">
          <ShowContainer />
        </Route>
        <Route path="/cart">
          <CartContainer />
        </Route>
        <Route path="/profile">
          <Profile />
        </Route>
      </Switch>
      }
    </div>
  );
}

export default App;
