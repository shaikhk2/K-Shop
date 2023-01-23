import ItemCard from "../Components/ItemCard";

function ItemContainer( { user, items, AddToCart }) {

    return (
        <div>
            {items?.map((item) => (
            <ItemCard
            key={item.id} 
            item={item} 
            AddToCart={ AddToCart }
            user={ user }
            />
            ))}  
        </div>
    )
}

export default ItemContainer;