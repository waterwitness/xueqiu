.class final Lcom/xueqiu/android/community/WriteStatusActivity$40;
.super Lcom/xueqiu/android/base/b/p;
.source "WriteStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;I)V
    .locals 0

    .prologue
    .line 2117
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    iput p2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->a:I

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 2120
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 2121
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->U(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 2122
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->V(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/a/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    .line 2123
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->a:I

    if-nez v0, :cond_1

    .line 2124
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->W(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 2128
    :cond_0
    :goto_0
    return-void

    .line 2125
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 2117
    check-cast p1, Ljava/util/ArrayList;

    .line 3132
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3134
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 3135
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3136
    invoke-static {v3, v0, v5}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3140
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3141
    const-string v2, "type_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3142
    const-string v2, "title_key"

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const v4, 0x7f070209

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3143
    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3145
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3148
    const-string v1, "type_key"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3150
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3151
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->U(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 3152
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->V(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/a/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    .line 3154
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->a:I

    if-nez v0, :cond_3

    .line 3155
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->W(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    :cond_2
    :goto_1
    return-void

    .line 3156
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->a:I

    if-ne v0, v5, :cond_2

    .line 3157
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$40;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V

    goto :goto_1
.end method
