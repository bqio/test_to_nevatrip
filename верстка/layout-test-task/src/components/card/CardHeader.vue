<template>
  <div class="card-header">
    <slot></slot>
  </div>
</template>

<script setup></script>

<style scoped>
.card-header {
  display: flex;
  flex-direction: column;
}

@media all and (min-width: 0px) and (max-width: 768px) {
  .card-header {
    flex-direction: column-reverse;
  }
}
</style>
