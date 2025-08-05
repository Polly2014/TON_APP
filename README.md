# TON Telegram Mini App

一个基于TON区块链的Telegram小程序示例，展示如何在Telegram中集成TON钱包功能。

## 功能特色

- 🔗 **TON Connect集成** - 安全连接TON钱包
- 💰 **余额查询** - 实时查看TON余额
- 💸 **转账功能** - 快速发送TON代币
- 📱 **Telegram优化** - 完美适配Telegram Web App环境
- 🎨 **响应式设计** - 支持各种屏幕尺寸

## 技术栈

- **前端**: HTML5, CSS3, JavaScript (ES6+)
- **区块链**: TON Blockchain
- **钱包连接**: TON Connect UI
- **平台**: Telegram Web App

## 快速开始

### 1. 安装依赖

```bash
npm install
```

### 2. 配置项目

编辑 `public/tonconnect-manifest.json` 文件，更新以下信息：

```json
{
    "url": "https://your-domain.com",
    "name": "你的应用名称",
    "iconUrl": "https://your-domain.com/icon.png",
    "termsOfUseUrl": "https://your-domain.com/terms",
    "privacyPolicyUrl": "https://your-domain.com/privacy"
}
```

### 3. 启动开发服务器

```bash
npm run dev
```

应用将在 `http://localhost:3000` 启动。

### 4. 在Telegram中测试

1. 将应用部署到公网可访问的域名
2. 在Telegram中创建一个Bot
3. 设置Web App URL指向你的应用

## 项目结构

```
TON_APP/
├── package.json                 # 项目依赖和脚本
├── README.md                   # 项目文档
└── public/
    ├── index.html              # 主要HTML文件
    └── tonconnect-manifest.json # TON Connect配置
```

## 部署指南

### 1. 静态网站部署

由于这是一个纯前端应用，你可以将其部署到任何静态网站托管服务：

- **Vercel**: 推荐，支持自动部署
- **Netlify**: 简单易用
- **GitHub Pages**: 免费托管
- **云服务商**: 阿里云、腾讯云等

### 2. Telegram Bot配置

1. 与 [@BotFather](https://t.me/botfather) 对话创建新Bot
2. 使用 `/newapp` 命令创建Web App
3. 设置Web App URL为你的部署地址
4. 配置Bot菜单按钮

### 3. 域名和HTTPS

- 确保使用HTTPS（Telegram要求）
- 配置正确的域名
- 更新 `tonconnect-manifest.json` 中的URL

## API配置

### TON Center API

应用使用TON Center API查询余额。获取API密钥：

1. 访问 [TON Center](https://toncenter.com/)
2. 获取免费API密钥
3. 在代码中替换 `your-api-key-here`

```javascript
const response = await fetch(`https://toncenter.com/api/v2/getAddressBalance?address=${address}`, {
    headers: {
        'X-API-Key': 'your-actual-api-key'
    }
});
```

## 安全注意事项

1. **API密钥安全**: 
   - 对于生产环境，API密钥应该存储在后端
   - 考虑使用环境变量或服务器端代理

2. **交易验证**:
   - 始终在区块链上验证交易
   - 实现适当的错误处理

3. **用户输入验证**:
   - 验证所有用户输入
   - 防止XSS和其他攻击

## 扩展功能

### 1. 智能合约交互

```javascript
// 示例：与智能合约交互
const contractAddress = "EQ..."; // 合约地址
const transaction = {
    validUntil: Math.floor(Date.now() / 1000) + 300,
    messages: [{
        address: contractAddress,
        amount: "100000000", // 0.1 TON
        payload: "te6cc..." // 编码的合约调用数据
    }]
};
```

### 2. NFT展示

```javascript
// 示例：获取NFT收藏
async function getUserNFTs(address) {
    const response = await fetch(`https://tonapi.io/v1/account/${address}/nfts`);
    const data = await response.json();
    return data.nft_items;
}
```

### 3. DeFi集成

```javascript
// 示例：DEX交易
async function swapTokens(fromToken, toToken, amount) {
    // 实现代币交换逻辑
}
```

## 故障排除

### 常见问题

1. **钱包连接失败**
   - 检查 `tonconnect-manifest.json` 配置
   - 确保HTTPS连接
   - 验证域名设置

2. **余额显示错误**
   - 检查API密钥
   - 验证网络连接
   - 查看浏览器控制台错误

3. **交易失败**
   - 确认钱包余额充足
   - 检查接收地址格式
   - 验证交易金额

### 调试技巧

```javascript
// 启用TON Connect调试
tonConnectUI.onStatusChange(wallet => {
    console.log('Wallet status:', wallet);
});

// 监听所有错误
window.addEventListener('error', (e) => {
    console.error('Global error:', e);
});
```

## 贡献指南

1. Fork 项目
2. 创建功能分支 (`git checkout -b feature/amazing-feature`)
3. 提交更改 (`git commit -m 'Add amazing feature'`)
4. 推送到分支 (`git push origin feature/amazing-feature`)
5. 开启 Pull Request

## 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 资源链接

- [TON 区块链文档](https://ton.org/docs/)
- [TON Connect文档](https://docs.ton.org/develop/dapps/ton-connect/)
- [Telegram Bot API](https://core.telegram.org/bots/api)
- [Telegram Web Apps](https://core.telegram.org/bots/webapps)
- [TON Center API](https://toncenter.com/api/v2/)

## 更新日志

### v1.0.0 (2025-08-05)
- 初始版本发布
- 基础钱包连接功能
- 余额查询功能
- 转账功能
- Telegram Web App集成