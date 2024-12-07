<!-- eslint-disable vue/multi-word-component-names -->
<script lang="ts" setup></script>

<template>
  <div class="card">
    <header>
      <slot name="header"></slot>
    </header>
    <slot></slot>
    <footer>
      <slot name="footer"></slot>
    </footer>
  </div>
</template>

<style lang="scss" scoped>
.card {
  background-color: #dbb73c;
  border-color: #594845;
  margin: 5px;
  padding: 5px;
}
</style>
