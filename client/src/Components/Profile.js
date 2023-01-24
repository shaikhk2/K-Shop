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
            <div className="profile">
                <h2> My Profile </h2>
                <p> <strong> Name: </strong> { currentUser.name } </p>
                <p> <strong> Username: </strong>{ currentUser.username } </p>
                <p><strong> Email: </strong> { currentUser.email } </p>
                <p> <strong> Address: </strong> { currentUser.address } </p>
                <p> <strong> Phone Number: </strong> { currentUser.phone } </p>
                <button className="card-button" onClick={ handleClick }> <strong>Edit My Profile</strong> </button>
            </div>
            { !click ? 
            <div className="update-form">
                <form onSubmit={ handleSubmit } >
                    <label htmlFor="name"> Name: </label>
                    <input
                        type="text"
                        id="name"
                        value={ name }
                        onChange={ handleChange }
                    />
                    <br />
                    <label htmlFor="username"> Username: </label>
                    <input
                        type="text"
                        id="username"
                        value={ username }
                        onChange={ handleChange }
                    />
                    <br />
                    <label htmlFor="email"> Email: </label>
                    <input
                        type="text"
                        id="email"
                        value={ email }
                        onChange={ handleChange }
                    />
                    <br />
                    <label htmlFor="address"> Address: </label>
                    <input
                        type="text"
                        id="address"
                        value={ address }
                        onChange={ handleChange }
                    />
                    <br />
                    <label htmlFor="number"> Phone Number: </label>
                    <input
                        type="text"
                        id="number"
                        value={ phone }
                        onChange={ handleChange }
                    />
                    <br />
                    <button className='card-button' type="submit"><strong> Save </strong> </button>
                </form>
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