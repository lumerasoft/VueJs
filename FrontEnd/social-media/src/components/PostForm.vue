<template>
<h1>User Post Creation</h1>
<form>
    <label>Title : </label>
    <input type="text" id="title" placeholder="Enter the title" v-model="title">
    <br />
    <br />
    <label>Content : </label>
    <input type="text" id="content" placeholder="Enter the content" v-model="content">
    <br />
    <br />
    <label>Tag : </label>
    <input type="text" id="tag" placeholder="Tag someone" v-model="tag">
    <br />
    <br />
    <button v-on:click="post" type="button">Post</button>
</form>
<p>Title : {{ title }}</p>
<p>Content : {{ content }}</p>
<p>Tag : {{ tag }}</p>

</template>

<script>
const STORAGE_KEY='media-post';
export default {
    name: "PostCreate",
    data() {
        return {
                title: '',
                content: '',
                tag: '',
                posts:[]
        }
    },
    methods: {
        post() {
            this.posts.push({title: this.title,content: this.content, tag: this.tag, id: this.posts.length });
      localStorage.setItem(STORAGE_KEY, JSON.stringify(this.posts));
        }
    }
}
</script>
