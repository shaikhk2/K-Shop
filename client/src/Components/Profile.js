import { useState } from 'react';

function Profile( { currentUser, setCurrentUser }) {

const [newFormData, setNewFormData] = useState({
    name: '',
    username: '',
    email: '',
    address: '',
    phone: '',
})

const { name, username, email, address, phone } = newFormData

const [click, setClick] = useState(true)

const handleChange = (e) => {
    setNewFormData({
        ...newFormData,
        [e.target.id]: e.target.value,
    });
    console.log(e.target.value)
}

const handleClick = () => {
    setNewFormData({
        ...currentUser
    });
    setClick(!click);
}

const handleSubmit = (e) => {
    e.preventDefault();
    console.log("hi!");
    fetch(`/users/${currentUser.id}`, {
        method: "PATCH",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            user_id: currentUser.id,
            ...newFormData
        })
    })
    .then((r) => {
        if (r.ok) {
        r.json().then(data => {
            setCurrentUser({...data})
            console.log(data)
        })

        }
    })
}

    return (
        <div>
            <div className="profile-container">
                <h2> My Profile </h2>
                <div className="profile-card">
                    <p className='profile-p'> <strong> Name: </strong> { currentUser.name } </p>
                    <p className='profile-p'> <strong> Username: </strong> { currentUser.username } </p>
                    <p className='profile-p'><strong> Email: </strong> { currentUser.email } </p>
                    <p className='profile-p'> <strong> Address: </strong> { currentUser.address } </p>
                    <p className='profile-p'> <strong> Phone Number: </strong> { currentUser.phone } </p>
                    < br />
                    <button className="card-button" onClick={ handleClick }> <strong> Edit My Profile </strong> </button>
                </div>
            </div>
            { !click ? 
            <div className="form-container">
                <div className='form-card'>
                    <form onSubmit={ handleSubmit } >
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <label htmlFor="name"> <strong>Name:</strong> </label>
                        <input
                            type="text"
                            id="name"
                            value={ name }
                            onChange={ handleChange }
                        />
                        <br />
                        <br />
                        <label htmlFor="username"> <strong>Username:</strong> </label>
                        <input
                            type="text"
                            id="username"
                            value={ username }
                            onChange={ handleChange }
                        />
                        <br />
                        <br />
                        <label htmlFor="email"> <strong>Email:</strong> </label>
                        <input
                            type="text"
                            id="email"
                            value={ email }
                            onChange={ handleChange }
                        />
                        <br />
                        <br />
                        <label htmlFor="address"> <strong>Address:</strong> </label>
                        <input
                            type="text"
                            id="address"
                            value={ address }
                            onChange={ handleChange }
                        />
                        <br />
                        <br />
                        <label htmlFor="phone"> <strong>Phone Number:</strong> </label>
                        <input
                            type="text"
                            id="phone"
                            value={ phone }
                            onChange={ handleChange }
                        />
                        <br />
                        <br />
                        <button className='card-button' type="submit"><strong> Save </strong> </button>
                    </form>
                </div>
            </div>
            : null }
        </div>
    )
}

// routes
//create button 
// create form in profile page that has all the fields
// auto fill in fields 


// on submit button 
// fetch in the frontend


export default Profile;