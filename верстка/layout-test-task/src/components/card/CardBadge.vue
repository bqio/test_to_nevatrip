<template>
  <div class="card-badge" :style="styles">{{ title }}</div>
</template>

<script setup>
const props = defineProps({
  title: {
    type: String,
    required: true,
  },
  textColor: {
    type: String,
    default: "#099ce8",
  },
  bgColor: {
    type: String,
    default: "#ffffff",
  },
});

const styles = {
  color: props.textColor,
  backgroundColor: props.bgColor,
};
</script>

<style scoped>
.card-badge {
  position: absolute;
  left: 0;
  top: 15%;
  font-weight: bold;
  background-color: #099ce8;
  color: #ffffff;
  padding: 10px 30px;
  text-transform: uppercase;
}

@media all and (min-width: 480px) and (max-width: 768px) {
  .card-badge {
    top: 0;
    border-radius: 15px 0px 15px 0px;
  }
}
</style>
