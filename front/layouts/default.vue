<script setup lang="ts">

const afficheMenu = ref(false)

const toggleMenu = () => {
  afficheMenu.value = !afficheMenu.value
}
</script>

<template>
  <div class="h-screen">
    <Transition>
      <div v-if="afficheMenu" class="float-left h-screen menu bg-gray-200">
        <div>
          <div class="h-12 px-4 py-2 flex items-center gap-2">
            <div class="w-8 overflow-hidden flex flex-col gap-1 cursor-pointer" @click="toggleMenu">
              <div class="w-8 h-1 bg-black rounded-full first-bar-menu" />
              <div class="w-8 h-1 bg-black rounded-full second-bar-menu" />
              <div class="w-8 h-1 bg-black rounded-full third-bar-menu" />
            </div>
            <p>Menu</p>
          </div>
          <div class="p-4">
            <ul>
              <li><a href="/">Accueil</a></li>
            </ul>
          </div>
        </div>
      </div>
    </Transition>

    <div>
      <div class="flex items-center justify-between h-12 px-4 py-2 bg-gray-100 shadow">
        <div class="w-8 flex flex-col gap-1 cursor-pointer" @click="toggleMenu">
          <div class="w-full h-1 bg-black rounded-full first-bar" :class="{'no-width': afficheMenu}" />
          <div class="w-full h-1 bg-black rounded-full second-bar" :class="{'no-width': afficheMenu}" />
          <div class="w-full h-1 bg-black rounded-full third-bar" :class="{'no-width': afficheMenu}" />
        </div>
        <p>Info'Foot</p>
      </div>
      <div class="p-4 overflow-auto">
        <slot />
      </div>
    </div>
  </div>
</template>

<style scoped>

.menu{
  width: 13rem;
}

.first-bar{
  transition: width 0.2s ease-in-out;
}

.second-bar{
  transition: width 0.2s ease-in-out;
  transition-delay: 160ms;
}

.third-bar{
  transition: width 0.2s ease-in-out;
  transition-delay: 320ms;
}

.v-enter-active,
.v-leave-active {
  overflow: hidden;
  transition: width 0.5s ease-in-out;
}

.v-enter-from,
.v-leave-to {
  width: 0;
}

.v-enter-active .first-bar-menu,
.v-leave-active .first-bar-menu {
  transition: transform 0.2s ease-in-out;
}

.v-enter-active .second-bar-menu,
.v-leave-active .second-bar-menu {
  transition: transform 0.2s ease-in-out;
  transition-delay: 160ms;
}

.v-enter-active .third-bar-menu,
.v-leave-active .third-bar-menu {
  transition: transform 0.2s ease-in-out;
  transition-delay: 320ms;
}

.v-enter-from .first-bar-menu, .v-leave-to .first-bar-menu,
.v-enter-from .second-bar-menu, .v-leave-to .second-bar-menu,
.v-enter-from .third-bar-menu, .v-leave-to .third-bar-menu {
  transform: translateX(100%);
}

.no-width{
  width: 0;
}

</style>
