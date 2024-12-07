<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
  <header>
    <RouterLink to="/">Home</RouterLink>
    <RouterLink to="/gerenciamento">Área de gerenciamento</RouterLink>
  </header>

  <main>
    <RouterView />
  </main>

  <footer>RODAPÉ</footer>
</template>

<style scoped></style>
