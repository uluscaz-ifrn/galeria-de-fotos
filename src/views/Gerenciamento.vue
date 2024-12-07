<!-- eslint-disable vue/multi-word-component-names -->
<script setup lang="ts">
import { ref } from 'vue'
import CardContainer from '../components/cards/Card-Container.vue'
import Card from '../components/cards/Card.vue'
type Foto = {
  id: number
  data: string //cadastro
  legenda: string
  favorito: boolean
  url: string
}

type Album = {
  id: number
  nome: string
  fotos: Array<Foto>
}

const albuns = ref<Album[]>()
</script>

<template>
  <h1>Gerenciamento de álbuns</h1>
  <header>
    <button class="adicionar">Adicionar</button>
    <button class="remover">remover</button>
  </header>
  <CardContainer class="albuns">
    <!-- Cartão que representa cada álbum -->
    <Card v-for="index in 10" :key="index" class="album">
      <template v-slot:header>
        <div class="opcoes">
          <div class="acoes">
            <span>ico-remover</span>
            <span>ico-editar</span>
          </div>
          <div class="selecao">
            <input type="checkbox" />
          </div>
        </div>
      </template>
      <template v-slot:footer>
        <div>Nome: ...</div>
        <div>Qtd: ...</div>
      </template>

      <div class="exibicao">FOTO</div>
    </Card>
  </CardContainer>
</template>

<style scoped lang="scss">
.opcoes {
  display: flex;
}
</style>
