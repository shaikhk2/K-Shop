
function ItemCard({ user, item, AddToCart }) {




    return (
        <div className="card-container">
            <div className="card">
                <img className="card-image" src={item.image} alt="Item" /> 
                <h3> {item.name} </h3>
                <p> 
                    {item.description}
                    <br /> 
                    <strong>Color: </strong>{item.color}
                    <br /> 
                    {/* <strong>Category: </strong>{item.category_name}
                    <br />  */}
                    <strong>$ </strong>{item.price} 
                </p>
                {/* <p> <strong>Sizes: </strong> {item.size} </p> */}
                <button className="card-button" onClick={ () =>  AddToCart(item, user) }> <strong>Add to Cart</strong> </button>
            </div>
        </div>
    )
}

export default ItemCard;