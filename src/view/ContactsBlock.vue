<template>
    <div id="contacts">
        <div class="notebook">
            <div class="contacts_info d-flex justify_center item_center">
                <div class="info ">
                    <div class="title_contacts">
                        Contacts:
                    </div>
                    <div class="info_block">
                        <i class="fa-sharp fa-solid fa-house mr"></i>
                        <span>Bruges, Belgium </span>
                    </div>

                    <div class="info_block">
                        <i class="fa-solid fa-envelope mr"></i>
                        <span>Email: </span>
                        <span>mykola.moroka@gmail.com</span>
                    </div>

                    <div class="info_block">
                        <i class="fa-brands fa-telegram mr"></i>
                        <span>Telegram: </span>
                        <span>@NikolayMoroka</span>
                    </div>

                    <div class="info_block">
                        <i class="fa-brands fa-linkedin mr"></i>
                        <span>LinkedIn: </span>
                        <span><a class="link" href="https://www.linkedin.com/in/mykola-moroka/">https://www.linkedin.com/in/mykola-moroka/</a></span>
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

    .mr {
        margin-right: 5px;
    }
</style>