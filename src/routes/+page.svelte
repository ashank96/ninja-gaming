<script>
    	import { onMount } from 'svelte';
        let GreeterClient;
 
 onMount(async () => {
        GreeterClient = (await import('../lib/proto/proto_build/helloworld_grpc_web_pb')).default;
        var countryService = GreeterClient('https://preprod-web.gonuclei.com');
		console.log(countryService);
	});


</script>
<h1>Welcome to SvelteKit</h1>
<p>Visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to read the documentation</p>

