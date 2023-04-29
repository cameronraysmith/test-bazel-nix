# Monorepo

> Setup a monorepo with bazel and nix.


The overall structure is roughly similar to

```bash
monorepo
├── default.nix
├── shell.nix
├── WORKSPACE
├── python_package1
│   ├── BUILD
│   └── ...
├── python_package2
│   ├── BUILD
│   └── ...
├── js_app1
│   ├── BUILD
│   └── ...
└── js_app2
    ├── BUILD
    └── ...
```

as of this writing

```bash
tree --du -h -I "*node_modules*"
[417K]  .
├── [ 379]  README.md
├── [1.4K]  WORKSPACE
├── [ 314]  default.nix
├── [1.1K]  js_app1
│   ├── [ 320]  BUILD
│   ├── [ 386]  index.ts
│   └── [ 233]  package.json
├── [1.1K]  js_app2
│   ├── [ 320]  BUILD
│   ├── [ 418]  index.ts
│   └── [ 231]  package.json
├── [202K]  js_solidstartapp
│   ├── [ 329]  BUILD
│   ├── [ 925]  README.md
│   ├── [ 645]  package.json
│   ├── [121K]  pnpm-lock.yaml
│   ├── [ 63K]  public
│   │   ├── [ 664]  favicon.ico
│   │   ├── [ 61K]  img
│   │   │   ├── [9.5K]  android-chrome-192x192.png
│   │   │   ├── [ 33K]  android-chrome-512x512.png
│   │   │   ├── [8.8K]  apple-touch-icon.png
│   │   │   ├── [ 664]  favicon-16x16.png
│   │   │   ├── [1.4K]  favicon-32x32.png
│   │   │   └── [6.9K]  mstile-150x150.png
│   │   ├── [ 409]  manifest.webmanifest
│   │   ├── [  23]  robots.txt
│   │   └── [ 439]  sw.js
│   ├── [ 16K]  src
│   │   ├── [3.4K]  components
│   │   │   ├── [ 724]  comment.tsx
│   │   │   ├── [ 698]  nav.tsx
│   │   │   ├── [1.3K]  story.tsx
│   │   │   └── [ 507]  toggle.tsx
│   │   ├── [ 104]  entry-client.tsx
│   │   ├── [ 181]  entry-server.tsx
│   │   ├── [ 903]  lib
│   │   │   └── [ 807]  api.ts
│   │   ├── [4.4K]  root.css
│   │   ├── [1.2K]  root.tsx
│   │   ├── [5.2K]  routes
│   │   │   ├── [1.9K]  [...stories].tsx
│   │   │   ├── [1.6K]  stories
│   │   │   │   └── [1.5K]  [id].tsx
│   │   │   └── [1.5K]  users
│   │   │       └── [1.4K]  [id].tsx
│   │   └── [ 322]  types.ts
│   ├── [ 340]  tsconfig.json
│   └── [ 131]  vite.config.ts
├── [202K]  js_t3app
│   ├── [1.4K]  README.md
│   ├── [ 201]  next-env.d.ts
│   ├── [ 519]  next.config.mjs
│   ├── [1.3K]  package.json
│   ├── [103K]  pnpm-lock.yaml
│   ├── [ 107]  postcss.config.cjs
│   ├── [ 148]  prettier.config.cjs
│   ├── [ 62K]  prisma
│   │   ├── [ 60K]  db.sqlite
│   │   └── [1.8K]  schema.prisma
│   ├── [ 15K]  public
│   │   └── [ 15K]  favicon.ico
│   ├── [ 17K]  src
│   │   ├── [1.8K]  env.mjs
│   │   ├── [4.6K]  pages
│   │   │   ├── [ 473]  _app.tsx
│   │   │   ├── [ 982]  api
│   │   │   │   ├── [ 214]  auth
│   │   │   │   │   └── [ 118]  [...nextauth].ts
│   │   │   │   └── [ 640]  trpc
│   │   │   │       └── [ 544]  [trpc].ts
│   │   │   └── [3.1K]  index.tsx
│   │   ├── [7.6K]  server
│   │   │   ├── [5.0K]  api
│   │   │   │   ├── [ 393]  root.ts
│   │   │   │   ├── [ 649]  routers
│   │   │   │   │   └── [ 553]  example.ts
│   │   │   │   └── [3.8K]  trpc.ts
│   │   │   ├── [2.1K]  auth.ts
│   │   │   └── [ 407]  db.ts
│   │   ├── [ 155]  styles
│   │   │   └── [  59]  globals.css
│   │   └── [2.1K]  utils
│   │       └── [2.1K]  api.ts
│   ├── [ 171]  tailwind.config.ts
│   └── [ 707]  tsconfig.json
├── [7.2K]  python_hatch
│   ├── [1.0K]  LICENSE
│   ├── [1.8K]  README.md
│   ├── [ 341]  docs
│   │   ├── [  19]  index.md
│   │   └── [ 194]  reference
│   │       └── [  98]  pythonhatch.md
│   ├── [1.4K]  mkdocs.yml
│   ├── [1.3K]  pyproject.toml
│   ├── [ 437]  pythonhatch
│   │   └── [ 341]  __init__.py
│   └── [ 545]  tests
│       ├── [   0]  __init__.py
│       ├── [ 150]  conftest.py
│       └── [ 235]  test_add.py
├── [ 445]  python_package_1
│   ├── [ 268]  BUILD
│   └── [  49]  test.py
└── [  72]  shell.nix
```
