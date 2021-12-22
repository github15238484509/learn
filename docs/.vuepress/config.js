module.exports = {
    title: '学习笔记',
    description: '学习前端的笔记',
	base:'/learn/',
    themeConfig: {
        nav: [{
            text: '文章',
            link: '/'
        }],
        sidebar: [{
            title: 'HTML',
            path: "/",
            collapsable: false,
            children: [{
                title: "555",
                path: "./CSS/css知识.md"
            }]
        }]
    }
}