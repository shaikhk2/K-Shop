import {useState } from 'react';

function CartContainer( { cart, handleDelete } ) {
        console.log(cart)

    
    const itemFunc = (cartitem) => {
        const { item } = cartitem
        return (
            <div className='cart-container'>
                <div className='cart-card'>
                    <img className='cart-image' src={item.image} alt="product"/>
                    <p><strong>{item.name}</strong></p>
                    <p> ${item.price}</p>
                    <p>{item.description}</p>
                    <button className="card-button"onClick={ () => handleDelete(cartitem) }> <strong>Remove from Cart</strong> </button>
                </div>
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