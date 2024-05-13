const express = require('express');
const axios = require('axios');

const app = express();

app.get('/', (req, res) => {

    res.sendFile(__dirname + '/index.html');
});


app.get('/erp-data', async (req, res) => {
    try {
        
        const response = await axios.get('https://app.holded.com', {
            headers: {
                'Authorization': 'curl -X GET  https://app.holded.com/itas/<tenant-IDCS-ID>/myservices/api/v1/serviceEntitlements   -H'
            }
        });

        res.json(response.data);
    } catch (error) {

        console.error('Error al obtener datos del ERP:', error);
        res.status(500).json({ error: 'Error al obtener datos del ERP' });
    }
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`Servidor en ejecución en el puerto ${PORT}`);
});

