<template>
  <div class="card-features">
    <CardFeature v-for="feature in features" :title="feature" />
  </div>
</template>

<script setup>
import CardFeature from "./CardFeature.vue";
defineProps({
  features: {
    type: Array,
    required: true,
  },
});
</script>

<style scoped></style>
