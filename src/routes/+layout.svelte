<script>
    //import Title from '$lib/title.svelte' create src/lib folder for common components
    // import global css file for layout from src/styles/global.css
    /** @type {import('./$types').LayoutData} */
    export let data;
</script>


<header>Ninja Gaming Guides</header>

<main>
    <div class="submenu">
        {#each data.sections as section}
          <a href="/about/{section.slug}">{section.title}</a>
        {/each}
    </div>
    <slot></slot>
</main>

<footer>Copyright 2022</footer>
