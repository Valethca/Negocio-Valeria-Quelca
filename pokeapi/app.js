document.getElementById('btnBuscar').addEventListener('click', buscarPokemon);

async function buscarPokemon() {
    const input = document.getElementById('pokeNombre').value.trim().toLowerCase();
    const contenedor = document.getElementById('resultado');
    
    if (!input) {
        contenedor.innerHTML = '<p class="error">Por favor, escribe el nombre de un Pokémon.</p>';
        return;
    }
    contenedor.innerHTML = '<p class="loading">Cargando...</p>';
    try {
        // Forma clásica e infalible con comillas normales y el signo +
        const response = await fetch('https://pokeapi-proxy.freecodecamp.rocks/api/pokemon/' + input);

        if (!response.ok) {
            throw new Error('El Pokémon no existe o hubo un error en la solicitud.');
        }

        const data = await response.json();

        const pesoKg = data.weight / 10;
        const alturaMetros = data.height / 10;
        const tipos = data.types.map(t => t.type.name).join(', ');

        contenedor.innerHTML = `
            <h3 style="text-transform: capitalize; text-align: center;">` + data.name + `</h3>
            <img class="pokemon-img" src="` + data.sprites.front_default + `" alt="` + data.name + `">
            <p><strong>Tipos:</strong> ` + tipos + `</p>
            <p><strong>Peso:</strong> ` + pesoKg + ` kg</p>
            <p><strong>Altura:</strong> ` + alturaMetros + ` m</p>
        `;

    } catch (error) {
        contenedor.innerHTML = '<p class="error">❌ Error: ' + error.message + '</p>';
    }
}