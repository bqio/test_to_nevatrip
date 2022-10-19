<script setup>
import { ref, computed, watch } from "vue";

const times = [
  [
    new Date("2021-08-21 18:00:00"),
    new Date("2021-08-21 18:30:00"),
    new Date("2021-08-21 18:45:00"),
    new Date("2021-08-21 19:00:00"),
    new Date("2021-08-21 19:15:00"),
    new Date("2021-08-21 21:00:00"),
  ],
  [
    new Date("2021-08-21 18:30:00"),
    new Date("2021-08-21 18:45:00"),
    new Date("2021-08-21 19:00:00"),
    new Date("2021-08-21 19:15:00"),
    new Date("2021-08-21 19:35:00"),
    new Date("2021-08-21 21:50:00"),
    new Date("2021-08-21 21:55:00"),
  ],
];

const route = ref(0);
const fromATimeOnly = ref(times[0][0]);
const fromBTimeOnly = ref(times[1][0]);
const fromATimeAndBack = ref(times[0][0]);

const ticketCount = ref(1);

const toBTimeOnly = computed(() => {
  return new Date(fromATimeOnly.value.getTime() + 50 * 60000);
});

const toATimeOnly = computed(() => {
  return new Date(fromBTimeOnly.value.getTime() + 50 * 60000);
});

const toBTimeAndBack = computed(() => {
  return new Date(fromATimeAndBack.value.getTime() + 50 * 60000);
});

const toATimesBack = computed(() => {
  return times[1].filter((time) => time > toBTimeAndBack.value);
});

const toATimeAndBack = ref(toATimesBack.value[0]);

watch(toATimesBack, () => {
  toATimeAndBack.value = toATimesBack.value[0];
});
</script>

<template>
  <main>
    <select v-model="route">
      <option :value="0">из А в В</option>
      <option :value="1">из В в А</option>
      <option :value="2">из А в В и обратно в А</option>
    </select>
    <select v-model="fromATimeOnly" v-if="route == 0">
      <option v-for="time in times[0]" :value="time">
        {{ time.toLocaleTimeString() }}
      </option>
    </select>
    <select v-model="fromBTimeOnly" v-if="route == 1">
      <option v-for="time in times[1]" :value="time">
        {{ time.toLocaleTimeString() }}
      </option>
    </select>
    <template v-if="route == 2">
      <select v-model="fromATimeAndBack">
        <option v-for="time in times[0]" :value="time">
          {{ time.toLocaleTimeString() }}
        </option>
      </select>
      <select v-model="toATimeAndBack">
        <option v-for="time in toATimesBack" :value="time">
          {{ time.toLocaleTimeString() }}
        </option>
      </select>
    </template>
    <input type="number" v-model="ticketCount" />
    <template v-if="route == 0">
      <p>Количество билетов: {{ ticketCount }}</p>
      <p>Общая стоимость: {{ ticketCount * 700 }}</p>
      <p>Время отправления: {{ fromATimeOnly.toLocaleTimeString() }}</p>
      <p>Время прибытия: {{ toBTimeOnly.toLocaleTimeString() }}</p>
    </template>
    <template v-if="route == 1">
      <p>Количество билетов: {{ ticketCount }}</p>
      <p>Общая стоимость: {{ ticketCount * 700 }}</p>
      <p>Время отправления: {{ fromBTimeOnly.toLocaleTimeString() }}</p>
      <p>Время прибытия: {{ toATimeOnly.toLocaleTimeString() }}</p>
    </template>
    <template v-if="route == 2">
      <p>Количество билетов: {{ ticketCount }}</p>
      <p>Общая стоимость: {{ ticketCount * 1200 }}</p>
      <p>Время отправления: {{ fromATimeAndBack.toLocaleTimeString() }}</p>
      <p>Время прибытия: {{ toBTimeAndBack.toLocaleTimeString() }}</p>
      <p>Время отправления назад: {{ toATimeAndBack.toLocaleTimeString() }}</p>
    </template>
  </main>
</template>

<style scoped></style>
