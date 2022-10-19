<script setup>
import CardList from "./components/card/CardList.vue";

const cards = [
  {
    title:
      "Обзорная экскурсия по рекам и каналам с остановками Hop on Hop Off 2020",
    duration: "2 часа",
    features: [
      "Билет на целый день",
      "Неограниченное число катаний",
      "6 остановок у главных достопримечательностей",
    ],
    times: ["12:00", "14:00", "16:00"],
    price: 900,
    secondPrice: 1200,
    imageSrc: "AdobeStock_168443825 1.png",
    badge: {
      title: "Новинка",
      bgColor: "#099ce8",
      textColor: "#ffffff",
    },
  },
  {
    title:
      "Обзорная экскурсия по рекам и каналам с остановками Hop on Hop Off 2020",
    duration: "2 часа",
    features: [
      "Билет на целый день",
      "Неограниченное число катаний",
      "6 остановок у главных достопримечательностей",
    ],
    times: ["14:00", "16:00", "18:00", "19:00", "20:00", "22:00"],
    price: 500,
    secondPrice: 1400,
    imageSrc: "ekskursii-po-spb-na-avtobuse 1.png",
    badge: {
      title: "Круглый год",
      bgColor: "#ffd83b",
      textColor: "#323232",
    },
  },
  {
    title:
      "Обзорная экскурсия по рекам и каналам с остановками Hop on Hop Off 2020",
    duration: "2 часа",
    features: [
      "Билет на целый день",
      "Неограниченное число катаний",
      "6 остановок у главных достопримечательностей",
    ],
    times: ["10:00", "12:00", "19:00"],
    price: 400,
    imageSrc: "music 1.png",
  },
];
</script>

<template>
  <div class="wrapper">
    <CardList :cards="cards" />
  </div>
</template>
