import {useState} from 'react';
import ItemCard from "../Components/ItemCard";
import { Link } from 'react-router-dom';

function ItemContainer( { user, items, AddToCart }) {

    const [filterCategory, setFilterCategory] = useState('all')
    
    const filteredArray = items.filter(item => item.category_name === filterCategory || filterCategory === 'all');


    /*
    current filter state - option(all, dress, robe, pajamas,)

    render item.filter(by filterSrate if not all)
    */

    /*
    step 1: useEffect
    step 2: it will check to see if the user is in state
    step 3: if no user, fetch to persist
    step 5: if response if ok, put the user in state
    step 4: if response from fetch is NOT ok (no cookie), redirect to another route
    put in every 
    */
console.log(items)
    function handleClick(category_name) {
        setFilterCategory(category_name)
    }
    return (
        <div>
            <div>
                <button className='category-button' onClick={() => setFilterCategory('all')}><p>All</p></button>
                <button className='category-button' onClick={() => setFilterCategory('Shirt')}><p>Shirts</p></button>
                <button className='category-button' onClick={() => setFilterCategory('Pant')}><p>Pants</p></button>
                <button className='category-button' onClick={() => setFilterCategory('Dress')}><p>Dresses</p></button>
                <button className='category-button' onClick={() => setFilterCategory('Gown')}><p>Gowns</p></button>
                <button className='category-button' onClick={() => setFilterCategory('Suit')}><p>Suits</p></button>
                
            </div>
            <div>
                {filteredArray?.map((item) => (
                <ItemCard
                    key={item.id} 
                    item={item} 
                    AddToCart={ AddToCart }
                    user={ user }
                />
                ))}  
            </div>
            
        </div>
    )
}

export default ItemContainer;