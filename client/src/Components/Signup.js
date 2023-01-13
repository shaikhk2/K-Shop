import { useState } from 'react';

function Signup( { setCurrentUser } ) {
    const [formData, setFormData] = useState({
        name: "",
        username: "",
        password: "",
        email: "",
        address: "",
        phone: "",
    });

    const handleChange = (e) => {
        setFormData({
            ...formData,
            [e.target.name]: e.target.value,
        });
    };

    function handleSubmit(e) {
        e.preventDefault();

        const newUser = {...formData};

        fetch("/users", {
            method: "POST",
            headers: {
            "Content-Type": "application/json",
            },
            body: JSON.stringify(newUser),
            }).then((res) => {
            if (res.ok) {
                res.json().then((user) => {
                setCurrentUser(user);
                });
            }
            else {
                res.json().then((errors) => {
                    console.error(errors);
                });
            }
        });
    }
    return (
    <>
        <h2>Signup</h2>
        <form className='Signup' onSubmit={ handleSubmit }>
        <label htmlFor="name">Name:</label>
        <input
            id="signup-name"
            type="text"
            name="name"
            value={ formData.name }
            onChange={ handleChange }
        />
        <br />
        <label htmlFor="username">Username:</label>
        <input
            id="signup-username"
            type="text"
            name="username"
            value={ formData.username }
            onChange={ handleChange }
        />

        <br />
        <label htmlFor="password">Password:</label>
        <input
            id="signup-password"
            type="text"
            name="password"
            value={ formData.password }
            onChange={ handleChange }
        />
        <br />
        <label htmlFor="email">Email:</label>
        <input
            id="signup-email"
            type="text"
            name="email"
            value={ formData.email }
            onChange={ handleChange }
        />
        <br />
        <label htmlFor="address">Address:</label>
        <input
            id="signup-address"
            type="text"
            name="address"
            value={ formData.address }
            onChange={ handleChange }
        />
        <br />
        <label htmlFor="phone">Phone-Number:</label>
        <input
            id="phone-signup-input"
            type="text"
            name="phone"
            value={ formData.phone }
            onChange={ handleChange }
        />
        <br />
        <button type="submit"> Submit </button>
        </form>
    </>
    );
}

export default Signup;