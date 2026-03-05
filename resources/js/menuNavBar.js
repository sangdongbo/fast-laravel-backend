import {
    mdiMenu,
    mdiClockOutline,
    mdiCloud,
    mdiCrop,
    mdiAccount,
    mdiCogOutline,
    mdiEmail,
    mdiLogout,
    mdiThemeLightDark,
    mdiGithub
  } from '@mdi/js'
  
  export default [
    {
      icon: mdiMenu,
      label: '示例菜单',
      menu: [
        {
          icon: mdiClockOutline,
          label: '项目一'
        },
        {
          icon: mdiCloud,
          label: '项目二'
        },
        {
          isDivider: true
        },
        {
          icon: mdiCrop,
          label: '最后一项'
        }
      ]
    },
    {
      isCurrentUser: true,
      menu: [
        {
          icon: mdiAccount,
          label: '我的资料',
          to: '/admin/edit-account-info'
        },
        {
          icon: mdiCogOutline,
          label: '设置'
        },
        {
          icon: mdiEmail,
          label: '消息'
        },
        {
          isDivider: true
        },
        {
          icon: mdiLogout,
          label: '登出',
          isLogout: true
        }
      ]
    },
    {
      icon: mdiThemeLightDark,
      label: '亮色/暗色',
      isDesktopNoLabel: true,
      isToggleLightDark: true
    },
    {
      icon: mdiGithub,
      label: 'GitHub',
      isDesktopNoLabel: true,
      href: 'https://github.com/balajidharma/laravel-vue-admin-panel',
      target: '_blank'
    },
    {
      icon: mdiLogout,
      label: '登出',
      isDesktopNoLabel: true,
      isLogout: true
    }
  ]