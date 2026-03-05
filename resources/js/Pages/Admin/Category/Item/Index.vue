<script setup>
import { Head } from "@inertiajs/vue3"
import {
  mdiSelectGroup,
  mdiPlus,
  mdiAlertBoxOutline,
  mdiArrowLeftBoldOutline
} from "@mdi/js"
import LayoutAuthenticated from "@/Layouts/Admin/LayoutAuthenticated.vue"
import SectionMain from "@/Components/SectionMain.vue"
import SectionTitleLineWithButton from "@/Components/SectionTitleLineWithButton.vue"
import BaseButton from "@/Components/BaseButton.vue"
import CardBox from "@/Components/CardBox.vue"
import BaseButtons from "@/Components/BaseButtons.vue"
import NotificationBar from "@/Components/NotificationBar.vue"
import CategoryItemList from "@/Components/Admin/CategoryItemList.vue"

const props = defineProps({
  items: {
    type: Object,
    default: () => ({}),
  },
  categoryType: {
    type: Object,
    default: () => ({}),
  },
  can: {
    type: Object,
    default: () => ({}),
  },
})

</script>

<template>
  <LayoutAuthenticated>
    <Head title="分类" />
    <SectionMain>
      <SectionTitleLineWithButton
        :icon="mdiSelectGroup"
        title="分类"
        main
      >
        <BaseButtons type="justify-start lg:justify-end" no-wrap>
          <BaseButton
            :route-name="route('admin.category.type.index')"
            :icon="mdiArrowLeftBoldOutline"
            label="返回"
            color="white"
            rounded-full
            small
          />
          <BaseButton
            v-if="can.delete"
            :route-name="route('admin.category.type.item.create', categoryType.id)"
            :icon="mdiPlus"
            label="添加"
            color="info"
            rounded-full
            small
          />
        </BaseButtons>
      </SectionTitleLineWithButton>
      <NotificationBar
        :key="Date.now()"
        v-if="$page.props.flash.message"
        color="success"
        :icon="mdiAlertBoxOutline"
      >
        {{ $page.props.flash.message }}
      </NotificationBar>
      <CardBox class="mb-6" has-table>
        <table class="border-collapse w-full border border-slate-400 dark:border-slate-500 bg-white dark:bg-slate-800 text-sm shadow-sm">
          <tbody>
            <tr>
              <td
                class="
                  p-4
                  pl-8
                  text-slate-500
                  dark:text-slate-400
                  hidden
                  lg:block
                "
              >
                名称
              </td>
              <td data-label="名称">
                {{ categoryType.name }}
              </td>
            </tr>
            <tr>
              <td
                class="
                  p-4
                  pl-8
                  text-slate-500
                  dark:text-slate-400
                  hidden
                  lg:block
                "
              >
                机器名称
              </td>
              <td data-label="机器名称">
                {{ categoryType.machine_name }}
              </td>
            </tr>
          </tbody>
        </table>
        <table>
          <thead>
            <tr>
              <th>
                名称
              </th>
              <th>
                描述
              </th>
              <th>
                启用
              </th>
              <th v-if="can.edit || can.delete">操作</th>
            </tr>
          </thead>

          <tbody>
            <template v-for="item in items">
              <CategoryItemList :item="item" :categoryType="categoryType" :can="can" :level=0 />
            </template>
          </tbody>
        </table>
      </CardBox>
    </SectionMain>
  </LayoutAuthenticated>
</template>
