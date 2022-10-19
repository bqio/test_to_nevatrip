<template>
  <img class="card-image" alt="card-image" />
</template>

<script setup></script>

<style scoped>
.card-image {
  width: 100%;
  height: 100%;
  border-radius: 15px 0px 0px 15px;
  object-fit: cover;
}

@media all and (min-width: 0px) and (max-width: 768px) {
  .card-image {
    border-radius: 15px 15px 0px 0px;
  }
}
</style>
