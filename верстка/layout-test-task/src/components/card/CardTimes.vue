<template>
  <div class="card-times">
    <slot></slot>
  </div>
</template>

<script setup></script>

<style scoped>
.card-times {
  display: flex;
  gap: 9px;
  align-items: center;
  margin-bottom: 15px;
}

@media all and (min-width: 480px) and (max-width: 768px) {
  .card-times {
    flex-direction: column;
    align-items: flex-start;
  }
}
</style>
