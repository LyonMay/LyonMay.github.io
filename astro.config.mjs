// @ts-check

import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';
import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
	site: 'https://LyonMay.github.io',
	base: '/lm_blog',
	integrations: [mdx(), sitemap()],
});
