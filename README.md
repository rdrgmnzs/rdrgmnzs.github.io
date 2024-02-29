# brdude.github.io

- Built using [JSON Resume](https://jsonresume.org/)
- Theme [relaxed](https://github.com/ObserverOfTime/jsonresume-theme-relaxed)
- Hosted by [GitHub Pages](https://pages.github.com/)

# Resume CLI
docker build -t resume-cli .
<!-- Note the image requires the SYS_ADMIN capability since the browser runs in sandbox mode. -->
docker run -v $(PWD):/home/pptruser/resume -it --cap-add=SYS_ADMIN resume-cli bash

resume export resume/index.html --theme relaxed --resume /home/pptruser/resume/resume.json
resume export resume/resume.pdf --theme relaxed --resume /home/pptruser/resume/resume.json