<script lang="ts">
	import './../lib/app.css';
	import favicon from '$lib/assets/favicon.svg';

	let { children } = $props();
</script>

<svelte:head>
	<title>Does she loves me? 🌼💗</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
	<link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&family=Schoolbell&display=swap" rel="stylesheet">
</svelte:head>

{@render children()}
