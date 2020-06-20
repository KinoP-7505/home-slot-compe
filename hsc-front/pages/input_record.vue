<template>
  <div class="container">
    <v-ons-page>
      <v-ons-toolbar>
        <div class="center">記録を入力</div>
      </v-ons-toolbar>
      <v-ons-list>
        <v-ons-list-item>
          <div class="center">
            レコード番号：
            <v-ons-input v-model="rec_no" laceholder="レコード番号" float>
            </v-ons-input>
          </div>
        </v-ons-list-item>
        <v-ons-list-item>
          <div class="center">会員id：{{ menber_id }}</div>
        </v-ons-list-item>
        <v-ons-list-item>
          <div class="center">機種id{{ model_id }}</div>
        </v-ons-list-item>
        <v-ons-list-item>
          <div class="center">大会id{{ compe_id }}</div>
        </v-ons-list-item>
        <v-ons-list-item>
          <!-- input type 数値 -->
          <div class="center">
            回転数：
            <v-ons-input v-model="freeitem1_value" laceholder="回転数" float>
            </v-ons-input>
          </div>
        </v-ons-list-item>
        <v-ons-list-item>
          <div class="center">
            差枚数：
            <v-ons-input v-model="freeitem2_value" laceholder="差枚数" float>
            </v-ons-input>
          </div>
        </v-ons-list-item>
        <v-ons-list-item>
          <div class="center">
            一撃数：
            <v-ons-input v-model="freeitem3_value" laceholder="一撃数" float>
            </v-ons-input>
          </div>
        </v-ons-list-item>
      </v-ons-list>
      <div class="center">
        <v-ons-button @click="insert_record()">
          登録
        </v-ons-button>
        ／可否：{{ res_text }}
      </div>
    </v-ons-page>
  </div>
</template>

<script>
export default {
  components: {},
  data() {
    return {
      rec_no: '',
      menber_id: 'user9999',
      model_id: 'model0001',
      compe_id: 'compe0001',
      freeitem1_id: 'item0001',
      freeitem1_value: '',
      freeitem2_id: 'item0002',
      freeitem2_value: '',
      freeitem3_id: 'item0003',
      freeitem3_value: '',
      freeitem4_id: '',
      freeitem4_value: '',
      freeitem5_id: '',
      freeitem5_value: '',
      regist_date: '2020/05/31 23:00:00',
      edit_date: '2020/05/31 23:00:00',
      creator: 'user9999',
      res_text: ''
    }
  },
  methods: {
    // レコード登録
    async insert_record() {
      const baseUrl = 'http://localhost:8080/api/record'
      const baseData = {
        rec_no: this.rec_no,
        menber_id: this.menber_id,
        model_id: this.model_id,
        compe_id: this.compe_id,
        freeitem1_id: 'item0001',
        freeitem1_value: this.freeitem1_value,
        freeitem2_id: 'item0002',
        freeitem2_value: this.freeitem2_value,
        freeitem3_id: 'item0003',
        freeitem3_value: this.freeitem3_value,
        freeitem4_id: '',
        freeitem4_value: '',
        freeitem5_id: '',
        freeitem5_value: '',
        regist_date: '2020/05/31 23:00:00',
        edit_date: '2020/05/31 23:00:00',
        creator: 'user9999'
      }
      const resRecord = await this.$axios.$post(baseUrl, baseData)
      this.res_text = resRecord.v
      console.log('resBody', resRecord.w)
    }
  }
}
</script>
