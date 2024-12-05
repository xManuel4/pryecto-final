const fs = require('fs');

test('La página debe contener "Hola Mundo"', () => {
    const html = fs.readFileSync('./index.html', 'utf-8');
    expect(html).toMatch(/Hola Mundo/);
});