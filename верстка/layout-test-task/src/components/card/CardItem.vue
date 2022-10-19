<template>
  <div class="card-item">
    <CardBadge
      v-if="badge"
      :title="badge.title"
      :bg-color="badge.bgColor"
      :text-color="badge.textColor"
    />
    <CardImage :src="imageSrc" />
    <CardContent>
      <CardHeader>
        <CardTitle :title="title" />
        <CardDuration :duration="duration" />
      </CardHeader>
      <CardFeatures :features="features" />
      <CardTimes>
        <CardFeature class="mb-0" title="Ближайший рейс сегодня" />
        <CardTimeList :times="times" />
      </CardTimes>
      <CardFooter>
        <CardPrices :price="price" :second-price="secondPrice" />
        <CardButton>Подробнее</CardButton>
      </CardFooter>
    </CardContent>
  </div>
</template>

<script setup>
import CardBadge from "./CardBadge.vue";
import CardImage from "./CardImage.vue";
import CardContent from "./CardContent.vue";
import CardHeader from "./CardHeader.vue";
import CardTitle from "./CardTitle.vue";
import CardDuration from "./CardDuration.vue";
import CardFeatures from "./CardFeatures.vue";
import CardTimes from "./CardTimes.vue";
import CardFeature from "./CardFeature.vue";
import CardTimeList from "./CardTimeList.vue";
import CardFooter from "./CardFooter.vue";
import CardPrices from "./CardPrices.vue";
import CardButton from "./CardButton.vue";

defineProps({
  title: {
    type: String,
    required: true,
  },
  duration: {
    type: String,
    required: true,
  },
  features: {
    type: Array,
    required: true,
  },
  times: {
    type: Array,
    required: true,
  },
  price: {
    type: Number,
    required: true,
  },
  secondPrice: {
    type: Number,
    default: null,
  },
  imageSrc: {
    type: String,
    required: true,
  },
  badge: {
    type: Object,
    required: false,
  },
});
</script>

<style scoped>
.card-item {
  display: grid;
  grid-template-columns: 2fr 3fr;
  background-color: #ffffff;
  border-radius: 15px;
  position: relative;
}

@media all and (min-width: 0px) and (max-width: 768px) {
  .card-item {
    display: flex;
    flex-direction: column;
  }
}
</style>
