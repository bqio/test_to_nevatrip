<template>
  <button class="card-button">
    <slot></slot>
  </button>
</template>

<script setup></script>

<style scoped>
.card-button {
  background-color: #ffd83c;
  color: #292929;
  font-size: 18px;
  padding: 15px 40px;
  border: none;
  border-radius: 23px;
  cursor: pointer;
  transition: 0.2s;
}

.card-button:hover {
  background-color: #ffd014;
}
</style>
