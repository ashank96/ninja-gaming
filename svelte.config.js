import adapter from '@sveltejs/adapter-auto';

/** @type {import('@sveltejs/kit').Config} */

const config = {
	kit: {
		adapter: adapter()
	},
	optimizeDeps: {
		include: ['exports']
	  }
};

export default config;
