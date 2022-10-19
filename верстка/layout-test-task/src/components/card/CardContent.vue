<template>
  <div class="card-content">
    <slot></slot>
  </div>
</template>

<script setup></script>

<style scoped>
.card-content {
  padding: 20px;
  border-top: 0.5px solid #bbbbbb;
  border-right: 0.5px solid #bbbbbb;
  border-bottom: 0.5px solid #bbbbbb;
  border-radius: 0px 15px 15px 0px;
}

@media all and (min-width: 0px) and (max-width: 768px) {
  .card-content {
    border-radius: 0px 0px 15px 15px;
    border-left: 1px solid #bbbbbb;
  }
}
</style>
