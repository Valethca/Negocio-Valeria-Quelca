const axios = require('axios');
const BASE_URL = 'https://pokeapi.co';
function obtenerPokemon(nombre) { return `${BASE_URL}/pokemon/${nombre}`; }