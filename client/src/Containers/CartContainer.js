import {useState } from 'react';

function CartContainer( { cart, handleDelete } ) {
        console.log(cart)

    
    const itemFunc = (cartitem) => {
        const { item } = cartitem
        return (
            <div className='cart'>
                <img className='cart-image' src={item.image} alt="product"/>
                <p>{item.name}</p>
                <p>{item.price}</p>
                <p>{item.description}</p>
                <button onClick={ () => handleDelete(cartitem) }> Delete item </button>
            </div>
        )
    }
    const handleCartRender = cart.map(cartitem => 
        <p> {itemFunc(cartitem)} </p>
    )
    return (
        <div>
            <p> { handleCartRender } </p>
        </div>
    )
}
export default CartContainer;