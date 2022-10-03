import { sveltekit } from '@sveltejs/kit/vite';
import { viteCommonjs } from '@originjs/vite-plugin-commonjs';

const config = {
	plugins: [sveltekit(), viteCommonjs()]
};

export default config;
