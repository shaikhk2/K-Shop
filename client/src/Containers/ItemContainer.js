import ItemCard from "../Components/ItemCard";

function ItemContainer( { items }) {

    return (
        <div>
            {items.map((item) => <ItemCard
            key={item.id} item={item}/>)}  
        </div>
    )
}

export default ItemContainer;