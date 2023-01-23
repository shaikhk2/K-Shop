
function ItemCard({ user, item, AddToCart }) {




    return (
        <div className="card-container">
            <div className="card">
                <h2> {item.name} </h2>
                <img className="card-image" src={item.image} alt="Item" /> 
                <p> <strong>Price: </strong>${item.price} </p>
                <p> <strong>Color: </strong>{item.color} </p>
                <p> <strong>Category: </strong>{item.category_name} </p>
                <p> {item.description} </p>
                <p> <strong>Sizes: </strong> {item.size} </p>
            </div>
            <div>
                <button onClick={ () =>  AddToCart(item, user) }> Add to Cart </button>
            </div>
        </div>
    )
}

export default ItemCard;