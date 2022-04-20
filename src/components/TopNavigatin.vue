<template>
    <div id="top_nav" class="d-flex item_center justify_space_between white_text">
        <div class="logo">
            <a href="#main_page">
                <img class="img_logo" src="../assets/logo.png" alt="">
            </a>
        </div>
        <div v-if="!mobile" class="navigation d-flex item_center justify_space_between">
            <div class="link" v-for="a in nav_list" :key="a.index">
                <a :href="a.path">
                    {{ a.name }}
                </a>
            </div>
        </div>

        <div v-else class="nav_burger d-flex item_center justify_space_between">
             <div @click="showNavigation" class="burger">
                <span></span>
            </div>

            <div v-if="burger" class="mobile_nav">
               <div class="nav_item d-flex">
                    <div class="item" v-for="item in nav_list" :key="item.index" @click="close">
                        <a :href="item.path">
                            <div>{{item.name}}</div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data: () => ({
        mobile: false,
        burger: false,
        nav_list: [
            {
                name: 'Home',
                path: '#main_page'
            },
            {
                name: 'About Me',
                path: '#about_me'
            },
            {
                name: 'Technology',
                path: '#technology'
            },
            {
                name: 'Contacts',
                path: '#contacts'
            },
        ]
    }),

    methods: {
        updateWidth() {
            if(window.innerWidth > 780) {
                this.mobile = false
            } else {
                this.mobile = true
            }
        },

        showNavigation() {
            document.querySelector('.burger span').classList.toggle('active'); 
            this.burger = !this.burger 
        },

        close() {
            this.showNavigation()
        }
    },

    created() {
        window.addEventListener('resize', this.updateWidth);
        if(window.innerWidth > 780) {
            this.mobile = false
        } else {
            this.mobile = true
        }
    },
}
</script>

<style scoped>
    #top_nav {
        position: fixed;
        width: 100%;
        height: 50px;
        background: #111111;
        z-index: 5;
        /* border-bottom: 1px solid #4ecac2; */
    }

    .logo {
        margin-left: 15px;
    }

    .img_logo {
        height: 30px;
    }

    .navigation {
        margin-right: 15px;
    }

    .link {
        width: 90px;
        font-size: 12px;
        margin-right: 5px;
        height: 100%;
        
    }

    .link a {
        line-height: 50px;
    }

    .link a:hover {
        color: #4ecac2;
    }

    .burger{
    position: absolute;
    right: 20px;
    top: 5px;
    width: 40px;
    height: 50px;
    cursor: pointer;
    z-index: 100000;
  }
.burger span, .burger span:before, .burger span:after{
  width: 100%;
  position: absolute;
  height: 2px;
  background: #fff;
  display: block;
  transition: 0.2s;
  border-radius: 5px;
}
.burger span:before{
  content: "";
  top: -10px;
  transition: top 200ms 200ms, transform 200ms cubic-bezier(0.23, 1, 0.32, 1);
}
.burger span{
  top: 20px;
}
.burger span:after{
  content: "";
  bottom: -10px;
  transition: bottom 200ms 200ms, transform 200ms cubic-bezier(0.23, 1, 0.32, 1);
}
.burger span.active:before{
  content: "";
  top: 0px;
  transform: rotate(45deg);
  transition: top 200ms, transform 200ms 200ms cubic-bezier(0.68, -0.55, 0.265, 1.55);
}
.burger span.active:after{
  content: "";
  bottom: 0;
  transform: rotate(-45deg);
  transition: bottom 200ms, transform 200ms 200ms cubic-bezier(0.68, -0.55, 0.265, 1.55);
}
.burger span.active{
  background: rgba(255, 255, 255, 0); 
}

.nav_item {
    flex-direction: column;
    margin-top: 60px;
    border-bottom: 1px solid #4d4d4d;
}

.item {
    padding: 15px 0;
    font-size: 18px;
    border-top: 1px solid #4d4d4d;
}

.item:active {
    background: #4ecac2;
}

.mobile_nav {
  position: fixed;
  width: 100%;
  height: 320px;
  z-index: 2;
  left: 0;
  top: 0;
  background: #111111;
  transition: 0.3s;
}
</style>