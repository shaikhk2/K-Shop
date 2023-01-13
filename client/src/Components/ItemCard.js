
function ItemCard({ item }) {




    return (
        <div className="card">
            <h1> {item.name} </h1>
            <img src={item.image} alt="Item" /> 
            <p> <strong>Price: </strong>{item.price} </p>
            <p> <strong>Color: </strong>{item.color} </p>
            <p> <strong>Category: </strong>{item.category_name} </p>
            <p> {item.description} </p>
            <p> {item.size} </p>
            
        </div>
    )
}

export default ItemCard;