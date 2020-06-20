<template>
  <div class="container">
    <v-ons-page>
      <v-ons-toolbar>
        <div class="center">Title</div>
      </v-ons-toolbar>

      <p style="text-align: center">
        <v-ons-button @click="addItem()">
          Click me!
        </v-ons-button>
      </p>
      <div>
        <logo />
        <h1 class="title">
          hsc-front
        </h1>
        <h2 class="subtitle">
          home-slot-compe-front
        </h2>
        <div class="links">
          <nuxt-link to="/input_record">記録入力</nuxt-link>
        </div>
        <div class="show-data">
          <li v-for="data in dbdata" :key="data">
            {{ data }}
          </li>
        </div>
      </div>
    </v-ons-page>
  </div>
</template>

<script>
import Logo from '~/components/Logo.vue'

export default {
  components: {
    Logo
  },
  data() {
    return {
      dbdata: ['nodata']
    }
  },
  methods: {
    async getData() {
      const baseUrl = 'http://localhost:8080/api/users/'
      // const baseUrl = 'http://hsc-spb:8080/api/users/'
      // const baseUrl = 'http://172.21.100.3:8080/api/users/'
      const response = await this.$axios.$get(baseUrl)
      // this.console.log('res=', response)
      response.forEach((dbd) => {
        this.dbdata.push(
          `rec_no=${dbd.rec_no} -- gest_id=${dbd.gest_id} -- gest_name=${dbd.gest_name}`
        )
      })
      // return response
    },
    addItem(e) {
      this.dbdata = []
      this.getData()
      /*
      dbRes.forEach((dbd) => {
        this.dbdata.push(`rec_no=${dbd.rec_no} -- gest_id=${dbd.gest_id}`)
      })
      */
    }
  }
}
</script>

<style>
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,
    'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
