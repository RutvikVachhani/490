const fs = require('fs');

const content = 'Some content!';
const path = './admin.txt';
try {
  fs.writeFileSync(path, content)
  //file written successfully
} catch (err) {
  console.error(err)
}
