# 🖼️ Image Integration Examples

This file shows how to integrate images into your Black Myth: Zhong Kui website.

## 📱 Character Images

### Replace Placeholder in Characters Section
```html
<!-- Current placeholder -->
<div class="placeholder-image">Zhong Kui</div>

<!-- Replace with actual image -->
<img src="images/characters/zhong-kui-portrait.jpg" 
     alt="Zhong Kui - The King of Ghosts and Demon Hunter" 
     class="character-image">
```

## 🌟 Story Images

### Replace Story Image Placeholder
```html
<!-- Current placeholder -->
<div class="placeholder-image">Story Image</div>

<!-- Replace with actual image -->
<img src="images/story/zhong-kui-mythology.jpg" 
     alt="Traditional Chinese painting of Zhong Kui" 
     class="story-image">
```

## 🎨 Background Images

### Hero Section Background
```css
.hero {
    background-image: url('images/backgrounds/hero-bg.jpg');
    background-size: cover;
    background-position: center;
}
```

## 🎮 Feature Icons

### Replace Emoji Icons with Custom Images
```html
<!-- Current emoji -->
<div class="feature-icon">🎮</div>

<!-- Replace with custom icon -->
<img src="images/icons/combat-system.png" 
     alt="Epic Combat System" 
     class="feature-icon">
```

## 📁 Recommended Image Structure

```
images/
├── characters/
│   ├── zhong-kui-portrait.jpg
│   └── mysterious-guide.jpg
├── story/
│   ├── zhong-kui-mythology.jpg
│   └── chinese-temple.jpg
├── backgrounds/
│   └── hero-bg.jpg
└── icons/
    ├── combat-system.png
    └── immersive-world.png
```
