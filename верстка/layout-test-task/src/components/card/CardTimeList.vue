<template>
  <div class="card-time-list">
    <CardTimeItem v-for="time in computedTimes" :key="time" :title="time" />
    <CardTimeItem v-if="!isHidden" title="ещё..." @click="handleClick" />
  </div>
</template>

<script setup>
import { ref, computed } from "vue";

import CardTimeItem from "./CardTimeItem.vue";

const props = defineProps({
  times: {
    type: Array,
    required: true,
  },
});

const isHidden = ref(true);

if (props.times.length > 3) {
  isHidden.value = false;
}

const computedTimes = computed(() => {
  if (!isHidden.value) {
    return props.times.slice(0, 3);
  } else {
    return props.times;
  }
});

const handleClick = () => {
  isHidden.value = true;
};
</script>

<style scoped>
.card-time-list {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  gap: 6px;
}

@media all and (min-width: 0px) and (max-width: 768px) {
  .card-time-list {
    align-self: flex-end;
    margin-bottom: 1rem;
  }
}
</style>
