<template>
  <div class="card-list">
    <CardItem
      v-for="card in cards"
      :key="card.imageSrc"
      :title="card.title"
      :duration="card.duration"
      :features="card.features"
      :times="card.times"
      :price="card.price"
      :second-price="card.secondPrice"
      :image-src="card.imageSrc"
      :badge="card.badge"
    />
  </div>
</template>

<script setup>
import CardItem from "./CardItem.vue";

defineProps({
  cards: {
    type: Array,
    required: true,
  },
});
</script>

<style scoped>
.card-list {
  display: grid;
  grid-template-rows: 1fr;
  gap: 65px;
}

@media all and (min-width: 480px) and (max-width: 768px) {
  .card-list {
    display: flex;
    flex-direction: column;
    gap: 20px;
  }
}

@media all and (max-width: 480px) {
  .card-list {
    display: flex;
    flex-direction: column;
    gap: 20px;
  }
}
</style>
