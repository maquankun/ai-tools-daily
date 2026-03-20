#!/bin/bash
# 修复后的GitHub推送脚本

echo "🚀 GitHub推送脚本"
echo ""

# 正确的远程仓库地址（使用URL编码的@）
REMOTE_URL="https://1085622705%40qq.com:[REDACTED]@github.com/1085622705/ai-tools-daily.git"

git remote remove origin 2>/dev/null
git remote add origin "$REMOTE_URL"

echo "📤 推送到GitHub..."
git push -u origin main --force

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 推送成功！"
    echo "🌐 网站地址: https://1085622705.github.io/ai-tools-daily"
else
    echo ""
    echo "❌ 推送失败"
    echo ""
    echo "请手动执行以下步骤："
    echo "1. 登录 https://github.com"
    echo "   邮箱: [PAYPAL_EMAIL]"
    echo "   密码: [REDACTED]"
    echo ""
    echo "2. 创建新仓库:"
    echo "   点击 '+' → New repository"
    echo "   Repository name: ai-tools-daily"
    echo "   选择 Public"
    echo "   点击 Create repository"
    echo ""
    echo "3. 上传文件："
    echo "   将 /home/ma/automoney/ai-tools-site 文件夹中的所有文件上传"
    echo ""
    echo "4. 开启GitHub Pages："
    echo "   Settings → Pages → Source → main → Save"
    echo ""
    echo "5. 访问网站："
    echo "   https://1085622705.github.io/ai-tools-daily"
fi
