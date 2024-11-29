const utf8 = {
    encode: str => unescape(encodeURIComponent(str)),
    decode: str => decodeURIComponent(escape(str))
};

function stringToUtf8Bytes(str) {
    const encoder = new TextEncoder();
    return encoder.encode(str);
}

function utf8BytesToString(bytes) {
    const decoder = new TextDecoder();
    return decoder.decode(bytes);
}

function modExp(base, exp, mod) {
    base = BigInt(base) % BigInt(mod);
    let result = BigInt(1);
    while (exp > 0) {
        if (exp % 2n === 1n) {
            result = (result * base) % BigInt(mod);
        }
        exp = exp / 2n;
        base = (base * base) % BigInt(mod);
    }
    return result;
}

function gcd(a, b) {
    a = BigInt(a);
    b = BigInt(b);
    while (b !== 0n) {
        let temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}

function areCoprime(a, b) {
    return gcd(a, b) === 1n;
}

function extendedGcd(a, b) {
    if (a === 0n) {
        return { gcd: b, x: 0n, y: 1n };
    } else {
        let { gcd, x1, y1 } = extendedGcd(b % a, a);
        let x = y1 - (b / a) * x1;
        let y = x1;
        return { gcd, x, y };
    }
}

function modInverse(a, m) {
    let { gcd, x } = extendedGcd(a, m);
    if (gcd !== 1n) {
        return null; // No modular inverse
    } else {
        return (x % m + m) % m;
    }
}

function generateKeypair(p, q) {
    if (!areCoprime(p, q)) {
        throw new Error("p and q must be coprime.");
    }

    const n = BigInt(p) * BigInt(q);
    const phi = (BigInt(p) - 1n) * (BigInt(q) - 1n);

    let e = 65537n; // Commonly used public key exponent
    while (e < phi) {
        if (areCoprime(e, phi)) {
            break;
        }
        e += 2n;
    }

    const d = modInverse(e, phi);

    return {
        public: { e, n },
        private: { d, n }
    };
}

function rsaEncrypt(message, pubkey) {
    const m = BigInt(message);
    const e = BigInt(pubkey.e);
    const n = BigInt(pubkey.n);
    if (m >= n) {
        throw new Error("Message too long for key.");
    }
    return modExp(m, e, n);
}

function rsaDecrypt(ciphertext, privkey) {
    const c = BigInt(ciphertext);
    const d = BigInt(privkey.d);
    const n = BigInt(privkey.n);
    return modExp(c, d, n);
}

function encrypt(msg, pubkey) {
    const m = stringToUtf8Bytes(msg);
    let encryptedMessage = '';
    for (let byte of m) {
        encryptedMessage += rsaEncrypt(byte, pubkey) + '.';
    }
    return btoa(encryptedMessage);
}

function decrypt(msg, privkey) {
    const decryptedBytes = atob(msg).split('.').map(byte => {
        if (byte) {
            return rsaDecrypt(byte, privkey);
        }
    }).filter(byte => byte !== undefined);
    return utf8BytesToString(decryptedBytes);
}

// Example usage
const p = 97; // First large prime
const q = 85; // Second large prime
const keypair = generateKeypair(p, q);
const msg = "114514";

console.log(JSON.stringify(keypair));
const encryptedMessage = encrypt(msg, keypair.public);
const decryptedMessage = decrypt(encryptedMessage, keypair.private);

console.log("Original message: " + msg);
console.log("Encrypted message: " + encryptedMessage);
console.log("Decrypted message: " + decryptedMessage);