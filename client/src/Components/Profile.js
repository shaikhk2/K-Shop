function Profile( { currentUser }) {

    return (
        <div>
            <h2> My Profile </h2>
            <p> <strong> Name: </strong> { currentUser.name } </p>
            <p> <strong> Username: </strong>{ currentUser.username } </p>
            <p><strong> Email: </strong> { currentUser.email } </p>
            <p> <strong> Address: </strong> { currentUser.address } </p>
            <p> <strong> Phone Number: </strong> { currentUser.phone } </p>
        </div>
    )
}

export default Profile;