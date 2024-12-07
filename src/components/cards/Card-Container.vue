<script lang="ts" setup></script>

<template>
  <section class="card-container albuns">
    <slot></slot>
  </section>
</template>

<style lang="scss" scoped>
.card-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: flex-start;
}
</style>
