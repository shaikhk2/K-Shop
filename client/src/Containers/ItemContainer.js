import ItemCard from "../Components/ItemCard";

function ItemContainer( { user, items, AddToCart }) {
    

    
    /*
    step 1: useEffect
    step 2: it will check to see if the user is in state
    step 3: if no user, fetch to persist
    step 5: if response if ok, put the user in state
    step 4: if response from fetch is NOT ok (no cookie), redirect to another route
    put in every 
    */
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