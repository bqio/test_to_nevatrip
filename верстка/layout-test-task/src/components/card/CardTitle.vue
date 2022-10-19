<template>
  <div class="card-title">{{ title }}</div>
</template>

<script setup>
defineProps({
  title: {
    type: String,
    required: true,
  },
});
</script>

<style scoped>
.card-title {
  font-size: 26px;
  margin-bottom: 11px;
  line-height: 34px;
}

@media all and (min-width: 0px) and (max-width: 768px) {
  .card-title {
    font-size: 18px;
    font-weight: 600;
  }
}
</style>
