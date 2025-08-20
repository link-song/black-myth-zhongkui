# 📁 Images Directory

This folder contains all images used in the Black Myth: Zhong Kui website.

## 📂 Folder Structure

```
images/
├── characters/     # Character images (Zhong Kui, Mysterious Guide, etc.)
├── story/         # Story-related images and illustrations
├── backgrounds/   # Background images and textures
├── icons/         # Icons and small graphics
└── README.md      # This file
```

## 🎯 Usage Guidelines

### Characters Folder (`/characters/`)
- **Zhong Kui**: Main character images, portraits, artwork
- **Mysterious Guide**: Supporting character images
- **Other Characters**: Any additional character artwork
- **Recommended size**: 400x300px or larger
- **Formats**: JPG, PNG, WebP

### Story Folder (`/story/`)
- **Mythology Art**: Traditional Chinese art depicting Zhong Kui
- **Historical Images**: Ancient paintings, scrolls, or illustrations
- **Cultural Artifacts**: Items related to Chinese mythology
- **Recommended size**: 600x400px or larger
- **Formats**: JPG, PNG, WebP

### Backgrounds Folder (`/backgrounds/`)
- **Hero Backgrounds**: Large background images for hero sections
- **Texture Images**: Subtle patterns and textures
- **Atmospheric Images**: Mood-setting backgrounds
- **Recommended size**: 1920x1080px or larger
- **Formats**: JPG, PNG, WebP

### Icons Folder (`/icons/`)
- **Feature Icons**: Small icons for game features
- **Navigation Icons**: Menu and navigation graphics
- **UI Elements**: Interface graphics and buttons
- **Recommended size**: 64x64px to 128x128px
- **Formats**: PNG (with transparency), SVG

## 🖼️ Image Requirements

### Quality Standards
- **High Resolution**: Use high-quality images for best display
- **Optimized**: Compress images for web use (balance quality and file size)
- **Consistent Style**: Maintain visual consistency across the site
- **Copyright**: Ensure you have rights to use all images

### File Naming Convention
- Use descriptive names: `zhong-kui-portrait.jpg`
- Use lowercase letters and hyphens
- Include dimensions if helpful: `hero-bg-1920x1080.jpg`
- Add version numbers if needed: `logo-v2.png`

## 🔧 Integration

### HTML Usage
```html
<!-- Character image -->
<img src="images/characters/zhong-kui-portrait.jpg" alt="Zhong Kui Portrait">

<!-- Background image in CSS -->
background-image: url('../images/backgrounds/hero-bg.jpg');
```

### CSS Usage
```css
.hero {
    background-image: url('../images/backgrounds/hero-bg.jpg');
    background-size: cover;
    background-position: center;
}
```

## 📱 Responsive Images

### Multiple Sizes
Consider providing multiple image sizes for responsive design:
- `image-small.jpg` (400px)
- `image-medium.jpg` (800px)
- `image-large.jpg` (1200px)

### Picture Element
```html
<picture>
    <source media="(min-width: 1200px)" srcset="images/large.jpg">
    <source media="(min-width: 800px)" srcset="images/medium.jpg">
    <img src="images/small.jpg" alt="Description">
</picture>
```

## 🚀 Future Enhancements

- **Lazy Loading**: Implement lazy loading for better performance
- **WebP Support**: Add WebP format for modern browsers
- **Image Optimization**: Use tools like ImageOptim or TinyPNG
- **CDN Integration**: Consider using a CDN for image delivery

## ⚠️ Important Notes

1. **Backup**: Keep original high-resolution images as backups
2. **Testing**: Test images on different devices and screen sizes
3. **Performance**: Monitor page load times with images
4. **Accessibility**: Always include meaningful alt text

## 📞 Support

If you need help with image optimization or integration, refer to:
- [Web Image Optimization Guide](https://web.dev/fast/#optimize-your-images)
- [Responsive Images Best Practices](https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Responsive_images)
