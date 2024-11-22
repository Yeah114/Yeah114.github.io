function togglePasswordVisibility() {
    const passwordInput = document.getElementById('password');
    const toggleButton = document.getElementById('display');
    const img = toggleButton.querySelector('img');

    if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
        img.src = 'close.png'; // 当密码可见时，显示关闭图标
        img.alt = '隐藏密码';
    } else {
        passwordInput.type = 'password';
        img.src = 'open.png'; // 当密码不可见时，显示打开图标
        img.alt = '显示密码';
    }
}

function stringBytes(str) {
    let sum = 0;
    for (let i = 0; i < str.length; i++) {
        sum += str.charCodeAt(i);
    }
    return sum;
}

function generateToken(account, password, period) {
    const time = Math.floor(Date.now() / 1000) + period;
    const token = account + password + time.toString();
    const hash = CryptoJS.MD5(token).toString();
    const tokenValue = Math.floor(stringBytes(hash) * stringBytes(account) / stringBytes(password)).toString() + "|" + time.toString();
    return tokenValue;
}

function generateAndDisplayToken() {
    const account = document.getElementById('account').value;
    const password = document.getElementById('password').value;
    const period = parseInt(document.getElementById('period').value, 10);
    const token = generateToken(account, password, period);
    document.getElementById('token').innerText = '登录Token(有效期: ' + period + '秒):\n' + token;
}

function copyToken() {
    const tokenText = document.getElementById('token').innerText;
    const textArea = document.createElement('textarea');
    textArea.value = tokenText.split(':')[1].trim();
    document.body.appendChild(textArea);
    textArea.select();
    document.execCommand('copy');
    document.body.removeChild(textArea);
    alert('Token已复制到剪贴板');
}

function clearToken() {
    document.getElementById('token').innerText = '';
    document.getElementById('account').value = '';
    document.getElementById('password').value = '';
    document.getElementById('period').value = '100';
}