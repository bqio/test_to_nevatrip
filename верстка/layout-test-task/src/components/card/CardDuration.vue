<template>
  <div class="card-duration">
    <img src="@/assets/clock-circular-outline.svg" alt="duration-icon" />
    <div class="card-duration-title">{{ duration }}</div>
  </div>
</template>

<script setup>
defineProps({
  duration: {
    type: String,
    required: true,
  },
});
</script>

<style scoped>
.card-duration {
  display: flex;
  gap: 6px;
  margin-bottom: 9px;
}

.card-duration-title {
  color: #9e9e9e;
  font-size: 14px;
}
</style>
