// import CategoryCard from './CategoryCard';
// import {Link} from 'react-router-dom';
// import {Card} from 'semantic-ui-react';


// function CategoryContainer() {

//     const CategoryFilter = (filterData) => {
//         return this.props.items.filter( item => item.category_name === filterData).map(item =>
//             <Link 
//                 key={item.id} 
//                 to={`/item/${item.id}`} >
//                 <CategoryCard cardType="all-item" 
//                     item={item} />
//             </Link>
//     )}

//     const priceSort = (sortDate) => {
//         return this.props.items.sort((itemA, itemB ) =>
//          sortDate === "HighToLow" ? (itemB.price - itemA.price) : (itemA.price - itemB.price)).map(item =>
//             <Link 
//                 key={item.id} 
//                 to={`/item/${item.id}`} >
//                     <CategoryCard cardType="all-item" item={ item }/>
//             </Link>)
//       }

//       const filterItems = () => {
//         let filterCategories = ["jumpsuit", "dress", "tunic", "bottom", "wedding", "top"]
//         let colorCategories = ["Red", "Blue", "Black", "Purple", "Orange", "Grey", "Yellow", "Pink", "Green"]
//         let priceCategories = ["HighToLow", "LowToHigh"]
//         let {name, id, color} = this.props.items
//         let info = this.props.info.info
//         if (priceCategories.includes(info)){
//             return this.sortByPrice(info)
//           } else if (filterCategories.includes(info)){
//             return this.filterByCategory(info)
//           }  else if (colorCategories.includes(info) ){
//             let imgCards = this.props.items.filter( item => item.color.toLowerCase() === info.toLowerCase()).map(item =>
//               <Link key={item.id} to={`/item/${item.id}`}><CategoryCard cardType="all-item" item={item}/></Link>)
//               return  imgCards
//           }  else {
//               let imgCards= this.props.items.map(item =>
//                 <Link key={item.id} to={`/item/${item.id}`}><CategoryCard cardType="all-item" item={item}/></Link>)
//               return  imgCards
//           }
//         }

//     return (
//         <div>
//             <Card.Group itemsPerRow={6}>{this.filterItems()}</Card.Group>
//         </div>
//     )
// }

// export default CategoryContainer;