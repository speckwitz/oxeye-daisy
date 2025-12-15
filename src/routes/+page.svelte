<style>
    .stage{
        display: flex;
        align-items: center;
        justify-content: center;
        flex : 1;
    }

    /** flower surrounding  */

    .flower-box{
        display: flex;
        align-items: center;
        flex-direction: column;
    }

    .flower {
        justify-self: center;
        align-self: center;
        min-height: 150px;
        margin: 100px;
    }

    /** flower and petals   */
    .core {
    position: absolute;
    top: 40%;
    left: 50%;
    height: 100px;
    width: auto;
    transform: translate(-50%, -50%);
    }


    .petal {
    position: absolute;
    top: 40%;
    left: 50%;
    width: 60px;      /* fixed or relative size */
    height: 150px;
    transform-origin: 50% 115%;
    }

</style>

<script>
    let magicNumber = Math.floor(Math.random() * 100)
    let Love = magicNumber % 2 == 0;
    let petalCount = Math.floor(Math.random() * (32 - 12) + 12);
    let petals = Array.from({ length: petalCount });
    /**
     * @param {any} clickedPetal
     */
    function destroyPetal(clickedPetal) {
        Love = !Love;

        // change the love status
        petals = petals.filter(i => i !== clickedPetal);
        delete petals[clickedPetal];
    }


</script>
<div class="stage">
    <div class="flower-box">        
        <div class="flower">
                {#each petals as i, index}
                    <img 
                        bind:this={petals[index]}
                        on:click={() => destroyPetal(petals[index])}
                        src="/Petals.png" 
                        class="petal" 
                        style="transform: translate(-50%, -120%) rotate({360 * index/petalCount}deg);"/>
                {/each}
            <img src="/Core.png" class="core" alt="">
        </div>

        <h1 class="title">
            <b>Does they love me?</b>
        </h1>
        <div class="answer">
            <p>
                { Love ? "Yes" : "No"}
            </p>
        </div>
    </div>
</div>