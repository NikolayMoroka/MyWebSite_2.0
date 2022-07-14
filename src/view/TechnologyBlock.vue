<template>
    <div id="technology" class="">
        <div class="btn_block d-flex justify_center item_center">
            <button @click="f_b_btn('front')" class="btn btn_front white_text">FrontEnd</button>
            <button @click="f_b_btn('back')" class="btn btn_back white_text">BackEnd</button>
        </div>
        <div class="technology_div d-flex justify_center item_center">
               <div class="white_text mt previos" @click="carusel('previos')">
                    <img :src="require('@/assets/circle-arrow-left-solid.svg')" width="40px" alt="arrow-left">
                </div>
                <div class="tech_block d-flex justify_center">
                    <div class="white_text tech d-flex justify_center item_center">
                        <div>
                            <div class="">
                                <img class="logo" :src="technology[slide].logo" alt="" id="image">
                            </div>
                            <div >
                                <div class="name">
                                    {{ technology[slide].name }}
                                </div>
                                <div class="description">
                                    {{ technology[slide].description }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="white_text mt next" @click="carusel('next')">
                    <img :src="require('@/assets/circle-arrow-right-solid.svg')" width="40px" alt="arrow-left">
                </div>
        </div>
     
    </div>
</template>

<script>
export default {
    data: () => ({
        slide: 0,
        techno: 'front',
        technology_front: [
            {
                name: 'HTML',
                logo: require('@/assets/brands/html5-brands.svg')
            },
            {
                name: 'CSS',
                logo: require('@/assets/brands/css3-alt-brands.svg')
            },
            {
                name: 'JavaScript',
                logo: require('@/assets/brands/js-brands.svg')
            },
            {
                name: 'VueJS',
                logo: require('@/assets/brands/vuejs-brands.svg')
            },
        ],

        technology_back: [
            {
                name: 'PHP',
                logo: require('@/assets/brands/php-brands.svg')
            },
            {
                name: 'Laravel',
                logo: require('@/assets/brands/laravel-brands.svg')
            },
            {
                name: 'Python',
                logo: require('@/assets/brands/python-brands.svg')
            },
            {
                name: 'NodeJS',
                logo: require('@/assets/brands/node-brands.svg')
            },
            {
                name: 'Databases',
                description: 'SQL, NoSQL, MongoDB',
                logo: require('@/assets/brands/database-solid.svg')
            },
        ]
    }),

    computed: {
        // eslint-disable-next-line
        technology() {
            if(this.techno === 'front') {
                return this.technology_front
            } else if(this.techno === 'back') {
                return this.technology_back
            }
        }
    },

    methods: {
        carusel(value) {
            if(value === "next") {
                if(this.slide < (this.technology.length - 1)) {
                    this.slide++ 
                }
            } else if(value === "previos") {
                if(this.slide > 0) {
                    this.slide--
                }
            }
            this.disabled()
        },  

        disabled() {
            const next_btn = document.querySelector(".next")
            const previos_btn = document.querySelector(".previos")
            if(this.slide == (this.technology.length - 1)) {
                next_btn.classList.add('disabled')
            } else if(this.slide == 0) {
                previos_btn.classList.add('disabled')
                next_btn.classList.remove('disabled')
            } else {
                next_btn.classList.remove('disabled')
                previos_btn.classList.remove('disabled')
            }
        },
        
        f_b_btn(value) {
            this.slide = 0
            this.disabled()
            const front_btn = document.querySelector(".btn_front")
            const back_btn = document.querySelector(".btn_back")
            this.techno = value
            if(value === 'front') {
                front_btn.classList.add('active_btn')
                front_btn.classList.add('active_btn_front')
                back_btn.classList.remove('active_btn')
                back_btn.classList.remove('active_btn_back')
            } else if(value === 'back') {
                back_btn.classList.add('active_btn')
                back_btn.classList.add('active_btn_back')
                front_btn.classList.remove('active_btn')
                front_btn.classList.remove('active_btn_front')
            }
        },

        checkImage() {
           const el = document.getElementById('image')
           el.onload = console.log("yes")
        }
    },

    mounted() {
        const previos_btn = document.querySelector(".previos")
        const front_btn = document.querySelector(".btn_front")

        if(this.slide == 0) {
            previos_btn.classList.add('disabled')
        }

        if(this.techno === 'front') {
            front_btn.classList.add('active_btn')
            front_btn.classList.add('active_btn_front')
        }
        
        
    }

    
}
</script>

<style scoped>
#technology {
    width: 100%;
    height: 100vh;
    padding-top: 10%;
    box-shadow: #111;
}

.name {
    font-size: 30px;
}

.logo {
    width: 30px;
}

.btn_block {
     width: 100%;
    height: 20%;
}

.btn {
    width: 150px;
    height: 50px;
    background: transparent;
    border-top: 1px solid #fff;
    border-bottom: 1px solid #fff;
    transition: 0.5s;
}

.btn_front {
    border-left: 1px solid #fff;
    border-right: none;
    border-radius: 25px 0 0 25px;
}

.btn_back {
    border-right: 1px solid #fff;
    border-left: none;
    border-radius: 0 25px 25px 0;
}

.active_btn {
    background: #4ecac2;
    border-color: #4ecac2;
    font-size: 18px;
}

.active_btn_front {
   box-shadow: -3px 0px 15px 1px #4ecac2;
}

.active_btn_back {
    box-shadow: 3px 0px 15px 1px #4ecac2;
}

.technology_div {
    width: 100%;
    height: 55%;
}

.tech_block {
    width: 60%;
    height: 60vh;
    background-image: url('../assets/mac_bg1.png');
    background-size: contain;
    background-repeat: no-repeat;
    background-position: center;
} 

.tech {
    margin-top: 5vh;
    height: 34vh;
}

.mt {
     margin-top: -16vh;
}

.disabled {
    opacity: 0;
}

@media (max-width: 590px) {
    .mt {margin-top: -8vh;}
    .tech_block {
        width: 80%;
    }
    .tech {
        margin-top: 9vh;
    }
    .next {
        margin-right: 5px;
    }

    .previos {
        margin-left: 5px;
    }
} 

</style>