import { useState } from 'react';
import { useHistory } from 'react-router-dom';
function Login( { onLogin, setCurrentUser } ) {

    const [formData, setFormData] = useState({
        username: '',
        password: ''
    });
    // console.log(formData)
    const {username, password} = formData
    const [errors, setErrors] = useState([])
    const history = useHistory()
    const handleChange = (e) => {
        setFormData({
          ...formData,
          [e.target.id]: e.target.value,
        });
      }
    function handleSubmit(e) {
        const newUser = { 
            username: username,
            password: password
          }
          e.preventDefault();
          // Logs in user
          fetch("/login", {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify( newUser ),
          })
          .then((r) => {
            if (r.ok) {
              // r.json().then((customer) => onLogin(customer));
              r.json().then(user => {
                setCurrentUser(user)
                history.push("/items")
              })
            }else {
              r.json().then(json => setErrors(json.errors))
            }
          });
    }
    return (
        <div>
            <h2> Login </h2>
            <form className='login-form' onSubmit={ handleSubmit }>
              <label htmlFor="username">Username: </label>
              <br />
              <input
                type="text"
                id="username"
                value={ username }
                onChange={ handleChange }
              />
              <br />
              <br />
              <label htmlFor="password">Password: </label>
              <br />
              <input
                type="text"
                id="password"
                value={ password }
                onChange={ handleChange }
              />
              <br />
              <br />
              <button className='card-button' type="submit"> Login </button>
            </form>
        </div>
    )
}

export default Login;