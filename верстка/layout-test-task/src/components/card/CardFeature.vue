<template>
  <div class="card-feature">
    <img src="@/assets/check-mark.svg" alt="feature-icon" />
    <div class="card-feature-title">{{ title }}</div>
  </div>
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
.card-feature {
  display: flex;
  gap: 14px;
  align-items: center;
  margin-bottom: 14px;
}

.card-feature-title {
  font-size: 18px;
  color: #343434;
}
</style>
