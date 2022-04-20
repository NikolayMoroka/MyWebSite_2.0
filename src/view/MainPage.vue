<template>
    <div id="main_page" class="d-flex item_center justify_center">
        <div class="main_title white_text d-flex">
            <div class="animate__animated animate__bounceInDown">Hello.</div>
            <div class="animate__animated animate__bounceInDown animate__delay-1s">I am Nikolay Moroka.</div>
        </div>

        <!-- <div class="info white_text animate__animated animate__fadeIn animate__delay-2s">
            I am a Ukrainian full-stack developer.
        </div> -->

        <div class="info white_text line1 anim-typewriter">
            I am Ukrainian full-stack developer.
        </div>

    </div>
</template>

<script>
export default {
    
}
</script>

<style scoped>
    #main_page {
        height: 100vh;
        width: 100%;
        background-color: #111;
        background-image: url('../assets/background.jpg');
        background-position: right;
        background-size: cover;
        flex-direction: column;
    }

    .main_title {
        font-size: 60px;
        font-weight: 700;
        text-transform: uppercase;
        flex-direction: column;
        text-shadow: 1px 1px 1px #000;
    }

    .main_title div:nth-child(2) {
        margin-top: 20px;
        text-shadow: 1px 1px 1px #000;
    }

    .info {
        margin-top: 30px;
        font-size: 25px;
        text-shadow: 1px 1px 1px #000;
    }

    .line1 {
        position: relative;
        border-right: 2px solid rgba(255,255,255,.75);
        font-size: 180%;
        text-align: center;
        white-space: nowrap;
        overflow: hidden;
        transform: translateY(-50%); 
    }

@media (max-width: 590px) {
    #main_page {
        background-image: url('../assets/background_mobile.jpg');
    }
}    

@media (max-width: 780px) {
    #main_page {
        background-image: url('../assets/background_mobile.jpg');
    }

    .main_title {
        font-size: 40px;
    }

    .info {
        margin-top: 30px;
        font-size: 20px;
       ;
    }
}

@media (min-width: 781px) and (max-width: 1400px) {
    #main_page {
        
    }
}


/* Animation */
.anim-typewriter{
    animation: typewriter 3s steps(44) 2s 1 normal both,
    blinkTextCursor 500ms steps(44) infinite normal;
}
</style>