<template>
    <div id="bottom_nav" class="d-flex item_center justify_space_between white_text">
        <div class="logo">© M.Moroka</div>
        <div class="navigation d-flex item_center justify_space_between">
            <div class="link" v-for="a in nav_list" :key="a.index">
                <a :href="a.path">
                    {{ a.name }}
                </a>
            </div>
            
        </div>
    </div>
</template>

<script>
export default {
    data: () => ({
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
    })
}
</script>

<style scoped>
    #bottom_nav {
        width: 100%;
        height: 50px;
        background: #111111;
        z-index: 5;
        /* border-bottom: 1px solid #4ecac2; */
    }

    .logo {
        margin-left: 15px;
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

    @media (max-width: 590px) {
    #bottom_nav {
        height: 100px;
        flex-direction: column;
        justify-content: center;
    }

    .logo {
        order: 1;
    }

    .logo {
        margin-left: 0px;
    }

    .navigation {
        margin-right: 0px;
    }

} 
</style>