# 🚀 快速部署指南 - Black Myth: Zhong Kui 网站

## 📋 前置要求

- ✅ GitHub 账户
- ✅ Cloudflare 账户  
- ✅ 域名 `blackmythzhongkui.site` 已注册
- ✅ Git 已安装

## 🎯 部署步骤概览

1. **本地测试** → 2. **推送到GitHub** → 3. **启用GitHub Pages** → 4. **部署到Cloudflare** → 5. **连接自定义域名**

---

## 🔧 步骤 1: 本地测试

```bash
# 在项目目录中运行
./preview.sh
```

这会自动在浏览器中打开网站，检查是否正常显示。

---

## 📤 步骤 2: 推送到 GitHub

### 2.1 创建 GitHub 仓库
1. 访问 [GitHub.com](https://github.com)
2. 点击 "New repository"
3. 仓库名称: `black-myth-zhongkui-site`
4. 描述: `Black Myth: Zhong Kui Game Landing Page`
5. 选择 "Public"
6. 不要勾选 "Add a README file"
7. 点击 "Create repository"

### 2.2 推送代码
```bash
# 初始化 Git 仓库
git init

# 添加远程源 (替换 YOUR_USERNAME 为你的 GitHub 用户名)
git remote add origin https://github.com/YOUR_USERNAME/black-myth-zhongkui-site.git

# 添加所有文件
git add .

# 提交更改
git commit -m "Initial commit: Black Myth Zhong Kui landing page"

# 推送到 GitHub
git push -u origin main
```

**或者使用自动化脚本:**
```bash
./deploy.sh
```

---

## 🌐 步骤 3: 启用 GitHub Pages

1. 在 GitHub 仓库页面，点击 **Settings**
2. 左侧菜单滚动到底部，点击 **Pages**
3. **Source** 选择 "Deploy from a branch"
4. **Branch** 选择 "main"，文件夹选择 "/ (root)"
5. 点击 **Save**
6. 等待几分钟，你的网站将在 `https://YOUR_USERNAME.github.io/black-myth-zhongkui-site` 上线

---

## ☁️ 步骤 4: 部署到 Cloudflare Pages

### 4.1 创建 Cloudflare Pages 项目

1. 登录 [Cloudflare Dashboard](https://dash.cloudflare.com/)
2. 左侧菜单点击 **Pages**
3. 点击 **Create a project**
4. 选择 **Connect to Git**
5. 授权 GitHub 账户
6. 选择你的仓库: `black-myth-zhongkui-site`

### 4.2 配置构建设置

```
Project name: black-myth-zhongkui-site
Production branch: main
Framework preset: None
Build command: (留空)
Build output directory: (留空)
Root directory: (留空)
```

### 4.3 部署

1. 点击 **Save and Deploy**
2. 等待部署完成 (通常 1-2 分钟)
3. 部署成功后，你会得到一个 `.pages.dev` 的域名

---

## 🔗 步骤 5: 连接自定义域名

### 5.1 在 Cloudflare Pages 中添加域名

1. 在 Pages 项目页面，点击 **Custom domains**
2. 点击 **Set up a custom domain**
3. 输入: `blackmythzhongkui.site`
4. 点击 **Continue**

### 5.2 配置 DNS 记录

1. 在 Cloudflare 控制台，选择你的域名 `blackmythzhongkui.site`
2. 进入 **DNS** 页面
3. 添加以下记录:

```
Type: CNAME
Name: @
Target: black-myth-zhongkui-site.pages.dev
Proxy status: Proxied (橙色云朵)
```

4. 点击 **Save**

### 5.3 等待生效

DNS 更改通常需要几分钟到几小时生效。你可以通过以下命令检查:

```bash
# 检查 DNS 解析
nslookup blackmythzhongkui.site

# 或者使用 dig
dig blackmythzhongkui.site
```

---

## ✅ 验证部署

### 检查清单

- [ ] GitHub Pages 可以访问
- [ ] Cloudflare Pages 部署成功
- [ ] 自定义域名解析正常
- [ ] HTTPS 证书自动配置
- [ ] 网站内容正常显示
- [ ] 响应式设计正常
- [ ] YouTube 视频嵌入正常

### 测试链接

- GitHub Pages: `https://YOUR_USERNAME.github.io/black-myth-zhongkui-site`
- Cloudflare Pages: `https://black-myth-zhongkui-site.pages.dev`
- 自定义域名: `https://blackmythzhongkui.site`

---

## 🔄 更新网站

### 方法 1: 使用部署脚本
```bash
./deploy.sh
```

### 方法 2: 手动更新
```bash
# 修改文件后
git add .
git commit -m "Update: 描述你的更改"
git push origin main
```

Cloudflare Pages 会自动检测 GitHub 的更改并重新部署。

---

## 🚨 常见问题解决

### 问题 1: YouTube 视频不显示
**解决方案:**
1. 检查 `index.html` 中的 `VIDEO_ID_HERE`
2. 替换为实际的 YouTube 视频 ID
3. 确保视频是公开的且允许嵌入

### 问题 2: 样式不加载
**解决方案:**
1. 检查文件路径是否正确
2. 确保 `styles.css` 文件存在
3. 检查浏览器控制台是否有错误

### 问题 3: GitHub Pages 不更新
**解决方案:**
1. 等待 5-10 分钟
2. 检查 GitHub Actions 状态
3. 强制刷新浏览器缓存

### 问题 4: Cloudflare 部署失败
**解决方案:**
1. 检查构建日志
2. 确保仓库连接正常
3. 验证构建设置

---

## 📱 移动端测试

1. 在桌面浏览器中按 F12 打开开发者工具
2. 点击移动设备图标
3. 选择不同的设备尺寸测试
4. 检查导航菜单、按钮、图片等元素

---

## 🎉 完成！

恭喜！你的 Black Myth: Zhong Kui 游戏网站已经成功部署到:

- **GitHub Pages**: 免费托管
- **Cloudflare Pages**: 全球 CDN，快速访问
- **自定义域名**: 专业品牌形象

### 下一步建议

1. **内容更新**: 根据最新游戏信息更新内容
2. **SEO 优化**: 添加更多关键词和描述
3. **性能监控**: 使用 Cloudflare Analytics 监控访问量
4. **功能扩展**: 考虑添加评论系统、新闻订阅等

---

## 📞 技术支持

如果遇到问题，可以:

1. 检查 [Cloudflare 文档](https://developers.cloudflare.com/pages/)
2. 查看 [GitHub Pages 文档](https://pages.github.com/)
3. 在项目仓库中创建 Issue

**祝你的游戏网站大获成功！** 🎮✨
