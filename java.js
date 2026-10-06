document.addEventListener('DOMContentLoaded', () => {
    // 1. Seleccionar elementos del DOM por sus IDs
    const form = document.getElementById('guineaPigForm');
    const cobayasList = document.getElementById('cobayasList');

    // Arreglo en memoria para guardar las cobayas
    const cobayas = [];

    // 2. Escuchar el evento de envío del formulario
    form.addEventListener('submit', function(event) {
        event.preventDefault(); // Evita que la página se recargue

        // 3. Capturar los valores ingresados por el usuario
        const nuevaCobaya = {
            nombre: document.getElementById('nombre').value.trim(),
            raza: document.getElementById('raza').value,
            edad: document.getElementById('edad').value,
            dueno: document.getElementById('dueno').value.trim()
        };

        // 4. Agregar la cobaya al arreglo y actualizar la vista
        cobayas.push(nuevaCobaya);
        renderizarCobayas();

        // 5. Limpiar los campos del formulario
        form.reset();
    });

    // Función para dibujar las tarjetas en pantalla
    function renderizarCobayas() {
        cobayasList.innerHTML = ''; // Limpiar la lista previa

        cobayas.forEach((cobaya) => {
            const li = document.createElement('li');
            li.className = 'card';
            li.innerHTML = `
                <h3>🐹 ${cobaya.nombre}</h3>
                <p><strong>Raza:</strong> ${cobaya.raza}</p>
                <p><strong>Edad:</strong> ${cobaya.edad} meses</p>
                <p><strong>Dueño/a:</strong> ${cobaya.dueno}</p>
            `;
            cobayasList.appendChild(li);
        });
    }
});