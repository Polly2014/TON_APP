# TON Telegram Mini App 部署指南

## 快速开始

### 1. 本地测试

由于终端限制，请手动运行以下命令启动本地服务器：

```bash
# 进入项目目录
cd "d:\docker_workspace\PlayGround\TON_APP"

# 启动服务器
npx http-server public -p 3000 -c-1 --cors
```

或者双击运行 `start.bat` 文件。

应用将在 `http://localhost:3000` 启动。

### 2. 部署到生产环境

#### 选项A: Vercel部署（推荐）

1. 安装Vercel CLI：
```bash
npm i -g vercel
```

2. 部署：
```bash
vercel
```

3. 按照提示完成部署

#### 选项B: Netlify部署

1. 将项目推送到GitHub
2. 连接Netlify到你的GitHub仓库
3. 设置构建目录为 `public`
4. 部署

#### 选项C: GitHub Pages

1. 在GitHub上创建仓库
2. 将代码推送到仓库
3. 在Settings > Pages中启用GitHub Pages
4. 设置源目录为 `public`

### 3. 配置Telegram Bot

1. 与 [@BotFather](https://t.me/botfather) 对话
2. 创建新Bot: `/newbot`
3. 创建Web App: `/newapp`
4. 设置Web App URL为你的部署地址
5. 更新 `public/tonconnect-manifest.json` 中的URL

### 4. 测试流程

1. 在Telegram中打开你的Bot
2. 点击菜单中的Web App
3. 测试钱包连接功能
4. 测试余额查询和转账功能

## 配置说明

### TON Connect Manifest

编辑 `public/tonconnect-manifest.json`：

```json
{
    "url": "https://your-actual-domain.com",
    "name": "你的应用名称",
    "iconUrl": "https://your-actual-domain.com/icon.png",
    "termsOfUseUrl": "https://your-actual-domain.com/terms",
    "privacyPolicyUrl": "https://your-actual-domain.com/privacy"
}
```

### API密钥配置

在 `public/index.html` 中找到以下代码并替换API密钥：

```javascript
const response = await fetch(`https://toncenter.com/api/v2/getAddressBalance?address=${currentWallet.account.address}`, {
    headers: {
        'X-API-Key': 'your-api-key-here' // 替换为你的实际API密钥
    }
});
```

获取API密钥：
1. 访问 [TON Center](https://toncenter.com/)
2. 注册并获取免费API密钥

## 功能说明

### 核心功能

1. **钱包连接**: 使用TON Connect安全连接钱包
2. **余额查询**: 实时显示TON余额
3. **转账功能**: 发送TON代币
4. **Telegram集成**: 完美适配Telegram Web App环境

### 技术特性

- **响应式设计**: 适配各种设备尺寸
- **主题适配**: 自动适配Telegram主题
- **安全性**: 使用官方TON Connect协议
- **用户体验**: 流畅的交互和视觉反馈

## 故障排除

### 常见问题

1. **本地服务器启动失败**
   - 确保Node.js已安装
   - 运行 `npm install` 安装依赖
   - 检查端口3000是否被占用

2. **钱包连接失败**
   - 检查HTTPS连接（生产环境必需）
   - 验证 `tonconnect-manifest.json` 配置
   - 确保域名设置正确

3. **余额显示错误**
   - 检查API密钥是否正确
   - 验证网络连接
   - 查看浏览器控制台错误信息

### 调试技巧

打开浏览器开发者工具（F12）查看控制台输出：

```javascript
// 查看钱包连接状态
console.log('Wallet status:', tonConnectUI.wallet);

// 查看错误信息
window.addEventListener('error', (e) => {
    console.error('Error:', e);
});
```

## 扩展开发

### 添加新功能

1. **智能合约交互**：
   - 在 `public/index.html` 中添加合约调用逻辑
   - 使用TON SDK构建交易

2. **NFT展示**：
   - 集成TON API获取NFT数据
   - 添加NFT展示界面

3. **DeFi功能**：
   - 集成DEX API
   - 添加代币交换功能

### 代码结构

```
TON_APP/
├── package.json                # 依赖和脚本配置
├── public/
│   ├── index.html             # 主应用文件
│   └── tonconnect-manifest.json # TON Connect配置
├── README.md                  # 项目文档
└── start.bat                  # Windows启动脚本
```

## 安全注意事项

1. **HTTPS要求**: Telegram Web App要求HTTPS
2. **API密钥安全**: 生产环境应使用后端代理
3. **用户输入验证**: 验证所有用户输入
4. **错误处理**: 实现完善的错误处理机制

## 支持和反馈

如果遇到问题或需要帮助：

1. 查看浏览器控制台错误
2. 检查网络连接
3. 验证配置文件
4. 参考TON官方文档

---

祝你开发愉快！🚀
