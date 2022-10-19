<template>
  <div class="card-prices">
    <div class="card-price">
      <div class="card-price-value">{{ price }}</div>
      <img src="@/assets/rub.svg" alt="rub" />
    </div>
    <div v-if="secondPrice" class="card-price-second">
      <div class="card-price-second-value">{{ secondPrice }}</div>
      <img
        class="price-second-icon"
        src="@/assets/ruble-currency-sign.svg"
        alt="rub"
      />
      <div>на причале</div>
    </div>
  </div>
</template>

<script setup>
defineProps({
  price: {
    type: Number,
    required: true,
  },
  secondPrice: {
    type: Number,
    required: false,
  },
});
</script>

<style scoped>
.card-price {
  display: flex;
  gap: 6px;
}

.card-price-value {
  font-size: 36px;
}

.price-second-icon {
  width: 12px;
}

.card-price-second {
  display: flex;
  gap: 2px;
  align-items: center;
  font-size: 14px;
}
</style>
