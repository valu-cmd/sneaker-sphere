// Selección de elementos
let cartIcon = document.querySelector('#cart-icon');
let cart = document.querySelector('.cart');
let closeCart = document.querySelector('#close-cart');

// Abrir el carrito al hacer clic en el ícono del carrito
cartIcon.addEventListener('click', () => {
    cart.classList.toggle('active');
});

// Cerrar el carrito al hacer clic en el botón de cierre
closeCart.addEventListener('click', () => {
    cart.classList.remove('active');
});
