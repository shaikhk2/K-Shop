import {useState } from 'react';

function CartContainer( { cart } ) {
        console.log(cart)
        const itemFunc = (item) => {
            return (
                <div>
                    <img src={item.image} alt="product"/>
                    <p>{item.name}</p>
                    <p>{item.price}</p>
                    <p>{item.description}</p>
                </div>
            )
        }
        const handleCartRender = cart.map(item => 
            <p>{itemFunc(item.item)}</p>
        )
        return (
            <div>
                <p> {handleCartRender}</p>
            </div>
        )
    }
    
    export default CartContainer;