<template>
  <div class="card-time-item">{{ title }}</div>
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
.card-time-item {
  background-color: #c5dcff;
  padding: 4px 15px;
  cursor: pointer;
  border-radius: 11px;
  transition: 0.2s;
  font-size: 16px;
}

.card-time-item:hover {
  background-color: #6ba6ff;
  color: #ffffff;
}
</style>
