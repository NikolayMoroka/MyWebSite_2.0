<template>
    <div id="about_me" class="d-flex justify_center item_center">
        <div class="about_me_block">
            <div class="about_me_title white_text title_blocks">
                About Me
            </div>

          

            <div class="about_me_text white_text">
                <div class="about_me_text_block">
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum consectetur ipsa facere nemo soluta itaque esse temporibus eligendi, ad laborum, officiis, dolorum est labore. Deleniti quas necessitatibus sapiente itaque alias!
                </div>
        
                  <div class="about_me_text_block">
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum consectetur ipsa facere nemo soluta itaque esse temporibus eligendi, ad laborum, officiis, dolorum est labore. Deleniti quas necessitatibus sapiente itaque alias!
                </div>

                  <div class="about_me_text_block">
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum consectetur ipsa facere nemo soluta itaque esse temporibus eligendi, ad laborum, officiis, dolorum est labore. Deleniti quas necessitatibus sapiente itaque alias!
                </div>
            
                  <div class="about_me_text_block">
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum consectetur ipsa facere nemo soluta itaque esse temporibus eligendi, ad laborum, officiis, dolorum est labore. Deleniti quas necessitatibus sapiente itaque alias!
                </div>
            
            </div>
        </div>
    </div>
</template>

<script>
export default {

    methods: {
        animation() {
            const title = document.querySelector('.about_me_title')
            const text = document.querySelector('.about_me_text')
            let windovCenter = (window.innerHeight / 2) + window.scrollY
            let scrollOffset = title.offsetTop + (title.offsetHeight / 2)

            if(windovCenter >= scrollOffset) {
                title.classList.add('show_el')
                title.classList.add('animate__animated')
                title.classList.add('animate__zoomIn')
                text.classList.add('show_el')
                text.classList.add('animate__animated')
                text.classList.add('animate__zoomIn')
                text.classList.add('animate__delay-1s')
            }
        }
    },

    mounted() {
        document.addEventListener('scroll', this.animation)
       
    }
    
}
</script>

<style scoped>
    #about_me {
        width: 100%;
        min-height: 100vh;
    }

    /* .about_me_block {
        max-width: 1100px;
        margin: 50px 20px;
        padding: 0 10px;
        height: 100vh;
        background-image: url('../assets/mac_bg1.png');
        background-size: contain;
        background-repeat: no-repeat;
        background-position: center;
    } */

    .about_me_title {
        opacity: 0;
    }

    .about_me_text {
        font-size: 20px;
        text-align: center;
        max-width: 80%;
        margin: auto;
        margin-top: 50px;
        opacity: 0;
    }

    .show_el {
         opacity: 1;
    }

    .about_me_text_block {
        margin-top: 15px;
    }

    @media (max-width: 590px) {
         .about_me_title {
            margin-top: 50px;
        }

        .about_me_text {
            font-size: 18px;
            text-align: center;
            margin-bottom: 50px;
         
        }
    } 
</style>