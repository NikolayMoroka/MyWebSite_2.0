<template>
  <div id="app">
    <TopNavigatin/>
    <MainPage/>
    <AboutMe/>
    <SpacerBlock/>
    <TechnologyBlock/>
    <ContactsBlock/>
  </div>
</template>

<script>
import TopNavigatin from './components/TopNavigatin.vue'
import MainPage from './view/MainPage.vue'
import SpacerBlock from './view/SpacerBlock.vue'
import AboutMe from './view/AboutMe.vue'
import TechnologyBlock from './view/TechnologyBlock.vue'
import ContactsBlock from './view/ContactsBlock.vue'

export default {
  name: 'App',
  components: {
    TopNavigatin,
    MainPage,
    SpacerBlock,
    AboutMe,
    TechnologyBlock,
    ContactsBlock
  }
}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,700;1,400&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Patrick+Hand&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Caveat&display=swap');
html {
  scroll-behavior: smooth;
}

body {
  margin: 0;
  padding: 0;
}

a {
  text-decoration: none;
  color: #fff;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

/* a:hover {
  font-size: 14px;
} */

#app {
  font-family: 'Montserrat', sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  background-color: #111;
  margin: 0;
  padding: 0;
}



/*  COMMON STYLE */

.container {
  max-width: 1280px;
  padding: 0 15px
}
.d-flex {
  display: flex;
}
.item_center {
  align-items: center;
}
.text_left {
  text-align: left;
}
.justify_center {
  justify-content: center;
}
.justify_space_between {
      justify-content: space-between;
}
.justify_space_around {
      justify-content: space-around;
}
.white_text {
  color: #fff
}
.title_blocks {
  font-size: 30px;
  text-transform: capitalize;
}


/* ANIMATION */

@keyframes typewriter{
  from{width: 0;}
  to{width: 18em;}
}
@keyframes blinkTextCursor{
  from{border-right-color: rgba(255,255,255,.75);}
  to{border-right-color: transparent;}
}
</style>
