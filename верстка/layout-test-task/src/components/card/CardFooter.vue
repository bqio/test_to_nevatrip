<template>
  <div class="card-footer">
    <slot></slot>
  </div>
</template>

<script setup></script>

<style scoped>
.card-footer {
  display: flex;
  gap: 15px;
  align-items: center;
}

@media all and (min-width: 0px) and (max-width: 768px) {
  .card-footer {
    justify-content: space-between;
  }
}
</style>
