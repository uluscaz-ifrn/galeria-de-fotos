<!-- eslint-disable vue/multi-word-component-names -->
<script setup lang="ts"></script>

<template>
  <h1>Cadastro de álbum</h1>
  <section>
    <div class="bloco-input">
      <label for="nome">Nome</label>
      <input type="text" name="nome" id="nome" />
    </div>
    <h2>Fotos</h2>
    <section class="container">
      <!-- região de cadastro de foto -->
      <div class="card-cadastro">
        <div class="bloco-input">
          <label for="legenda">Legenda</label>
          <input type="text" name="legenda" id="legenda" />
        </div>
        <div class="bloco-input">
          <label for="URL">URL</label>
          <input type="text" name="URL" id="URL" />
        </div>
        <div class="bloco-input">
          <button>Adicionar</button>
        </div>
      </div>
      <div class="card-list-foto">
        <div class="foto-card">
          <div class="opcoes">
            <span class="ico">editar</span>
            <span class="ico">remover</span>
          </div>
          <div class="exibicao">FOTO</div>
        </div>
      </div>
    </section>
    <div>
      <button>Cadastrar Álbum</button>
    </div>
  </section>
</template>

<style lang="scss" scoped></style>
