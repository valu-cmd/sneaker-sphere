const bar = document.getElementById('bar');
const close = document.getElementById('close');
const nav = document.getElementById('navbar');


if(bar){
    bar.addEventListener('click', () => {
        nav.classList.add('active');
    })
}

if(close){
    close.addEventListener('click', ()=>{
        nav.classList.remove('active');
    })
}

// Selección de elementos
let cartIcon = document.querySelector('#cart-icon');
let cartIconM = document.querySelector('#mobile i');
let cart = document.querySelector('.cart');
let closeCart = document.querySelector('#close-cart');

// Abrir el carrito al hacer clic en el ícono del carrito
cartIcon.onclick = () => {
    cart.classList.toggle('active');
};

// Abrir el carrito al hacer clic en el ícono del carrito en responsive
cartIconM.onclick = () => {
    cart.classList.toggle('active');
};

// Cerrar el carrito al hacer clic en el botón de cierre
closeCart.onclick = () => {
    cart.classList.remove('active');
};