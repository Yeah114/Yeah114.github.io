document.getElementById('display').addEventListener('click', function(event) {
    event.target.blur()
});

function togglePasswordVisibility() {
    const passwordInput = document.getElementById('password');
    const toggleButton = document.getElementById('display');
    const img = toggleButton.querySelector('img');
    if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
        img.src = 'open.png';
        img.alt = '隐藏密码'
    } else {
        passwordInput.type = 'password';
        img.src = 'close.png';
        img.alt = '显示密码'
    }
}

function stringBytes(str) {
    let sum = 0;
    for (let i = 0; i < str.length; i++) {
        sum += str.charCodeAt(i)
    }
    return sum
}

function generateAndDisplayToken() {
    const account = document.getElementById('account').value;
    const password = document.getElementById('password').value;
    const period = parseInt(document.getElementById('period').value, 10);
    // 尝试从输入元素获取e和n的值
    const publicKeyInput = document.getElementById('public').value;
    let e, n;
    
    // 检查输入是否为逗号分隔的两个数字
    if (/^\d+|\d+$/.test(publicKeyInput)) {
      [e, n] = publicKeyInput.split('|').map(Number);
    } else {
      // 如果输入不符合要求，使用默认值
      e = 65537;
      n = 8585;
    }
    
    // 使用获取到的e和n值构建JSON对象
    const public_key = { e: e, n: n };
    const token = generateToken(account, password, period, public_key);
    document.getElementById('token').innerText = '注册Token(有效期: ' + period + '秒):\n' + token
}

function copyToken() {
    const tokenText = document.getElementById('token').innerText;
    const textArea = document.createElement('textarea');
    textArea.value = tokenText.split('\n')[1].trim();
    document.body.appendChild(textArea);
    textArea.select();
    document.execCommand('copy');
    document.body.removeChild(textArea);
    alert('Token已复制到剪贴板')
}

function clearToken() {
    document.getElementById('token').innerText = '';
    document.getElementById('account').value = '';
    document.getElementById('password').value = '';
    document.getElementById('period').value = '100'
}
// 字符串分割函数
String.prototype.split = function(sep) {
    const fields = [];
    const pattern = new RegExp(`([^${sep}]+)`, 'g');
    let match;
    while ((match = pattern.exec(this)) !== null) {
        fields.push(match[1]);
    }
    return fields;
};

// 简单的大数运算函数
function mod_exp(base, exp, mod) {
    let result = 1;
    base = base % mod;
    while (exp > 0) {
        if (exp % 2 === 1) {
            result = (result * base) % mod;
        }
        exp = Math.floor(exp / 2);
        base = (base * base) % mod;
    }
    return result;
}

// 简单的欧几里得算法，用于计算最大公约数
function gcd(a, b) {
    while (b !== 0) {
        let temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}

// 检查两个数是否互质
function are_coprime(a, b) {
    return gcd(a, b) === 1;
}

// 扩展欧几里得算法，用于计算模逆
function extended_gcd(a, b) {
    if (a === 0) {
        return [b, 0, 1];
    } else {
        const [gcd, x1, y1] = extended_gcd(b % a, a);
        const x = y1 - Math.floor(b / a) * x1;
        const y = x1;
        return [gcd, x, y];
    }
}

// 计算模逆
function mod_inverse(a, m) {
    const [gcd, x, _] = extended_gcd(a, m);
    if (gcd !== 1) {
        return null; // 没有模逆
    } else {
        return (x % m + m) % m;
    }
}

// 生成RSA密钥对
function generate_keypair(p, q) {
    if (!are_coprime(p, q)) {
        throw new Error("p and q must be coprime.");
    }

    const n = p * q;
    const phi = (p - 1) * (q - 1);
    let e = 65537;
    while (e < phi) {
        if (are_coprime(e, phi)) {
            break;
        }
        e += 2;
    }

    const d = mod_inverse(e, phi);

    return {
        public: { e: e, n: n },
        private: { d: d, n: n }
    };
}

// RSA加密
function rsa_encrypt(message, pubkey) {
    const m = parseInt(message, 10);
    const e = pubkey.e;
    const n = pubkey.n;
    if (m >= n) {
        throw new Error("Message too long for key.");
    }
    return mod_exp(m, e, n);
}

// RSA解密
function rsa_decrypt(ciphertext, privkey) {
    const c = parseInt(ciphertext, 10);
    const d = privkey.d;
    const n = privkey.n;
    return mod_exp(c, d, n);
}

// 加密函数
function encrypt(msg, pubkey) {
    let m = "";
    for (let i = 0; i < msg.length; i++) {
        const message = msg.charCodeAt(i).toString();
        for (let j = 0; j < message.length; j++) {
            m += rsa_encrypt(message[j], pubkey) + ".";
        }
        m += ",";
    }
    return btoa(m); // base64 encoding
}

function decrypt(msg, privkey) {
    msg = atob(msg); // base64 decoding
    let decrypted_msg = "";
    const encrypted_parts = msg.split(',');

    encrypted_parts.forEach(encrypted_char => {
        if (encrypted_char.length > 0) {
            let decrypted_char = "";
            const encrypted_bytes = encrypted_char.split('.');

            encrypted_bytes.forEach(encrypted_byte => {
                if (encrypted_byte.length > 0) {
                    const decrypted_byte = rsa_decrypt(encrypted_byte, privkey);
                    decrypted_char += decrypted_byte.toString();
                }
            });
            decrypted_msg += String.fromCharCode(parseInt(decrypted_char, 10));
        }
    });

    return decrypted_msg;
}

// 示例：使用生成的RSA密钥进行加解密
function generateToken(account, password, period, public_key) {
    const time = Math.floor(Date.now() / 1000) + period;
    const token = JSON.stringify([account, password, time.toString()]);
    const tokenValue = encrypt(token, public_key) + "|" + time.toString();
    return tokenValue;
}
