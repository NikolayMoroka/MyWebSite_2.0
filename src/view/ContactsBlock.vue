<template>
    <div id="contacts">
        <div class="notebook">
            <div class="contacts_info d-flex justify_center item_center">
                <div class="info ">
                    <div class="title_contacts">
                        Contacts:
                    </div>
                    <div class="info_block">
                        <span>Kharkiv, Ukraine </span>
                    </div>

                    <div class="info_block">
                        <span>Email: </span>
                        <span>nikolaymoroka@gmail.com</span>
                    </div>

                    <div class="info_block">
                        <span>Telegram: </span>
                        <span>@NikolayMoroka</span>
                    </div>

                    <div class="info_block">
                        <span>LinkedIn: </span>
                        <span><a class="link" href="www.linkedin.com/in/nikolay-moroka-b467991a7">www.linkedin.com/in/nikolay-moroka-b467991a7</a></span>
                    </div>
                </div>
            </div>
        </div>
        <BottomNavigation/>
    </div>
</template>

<script>
import BottomNavigation from "../components/BottomNavigation.vue"
export default {
    components: {
        BottomNavigation
    }
    
}
</script>

<style scoped>
    #contacts {
        width: 100%;
        height: 100vh;
        background-image: url('../assets/note.jpg');
        background-position: center;
        background-size: cover;
    }

    .notebook {
        width: 100%;
        height: 100vh;
        background: radial-gradient(transparent, #111111);
    }

    .title_contacts {
        font-size: 30px;
        margin-bottom: 30px;
    }

    .contacts_info {
        height: 100vh;
    }

    .info {
        max-width: 355px;
        height: 355px;
        width: 35%;
        margin-top: 10%;
    }

    .info_block {
        margin-top: 10px;
        font-size: 12px;
    }

    .link {
        color: #000;
        text-decoration: underline #000;
    }
</style>