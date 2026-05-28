# Daily Learning

## Morning Planning

- [ ] Check out the [github blog](https://github.blog/) for topic ideas.
- [ ] Learn about [GitHub Pages](https://skills.github.com/#first-day-on-github).
- [ ] Convert my first blog post into an actual webpage.

## Review

Convert an image or video from dark mode to light mode using [ffmpeg](https://www.ffmpeg.org)

```bash
ffmpeg -i input.mp4 -vf "negate,hue=h=180,eq=contrast=1.2:saturation=1.1" output.mp4
```

## Images

Relative URL to an image in the repository:

<img src="myrepo/original.png" alt="Mona the Octocat" />

Absolute URL to an image on the internet:

<img src="https://camo.githubusercontent.com/11e0047ccd68d2e9a17fbd7328c2974d78dcb72925acba33814f40121ecb4132/68747470733a2f2f6f63746f6465782e6769746875622e636f6d2f696d616765732f737069646572746f6361742e706e67" alt="Mona the Octocat" width="400" />
